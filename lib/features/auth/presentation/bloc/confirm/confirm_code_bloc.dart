import "package:equatable/equatable.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:graph_auth_mobile/core/either/api_status.dart";
import "package:graph_auth_mobile/core/extension/api_status_extension.dart";
import "package:graph_auth_mobile/core/local_source/local_source.dart";
import "package:graph_auth_mobile/core/mixins/cache_mixin.dart";
import "package:graph_auth_mobile/features/auth/data/models/confirm/verify_request.dart";
import "package:graph_auth_mobile/features/auth/domain/repository/auth_repository.dart";
import "package:graph_auth_mobile/injector_container.dart";

part "confirm_code_event.dart";
part "confirm_code_state.dart";

class ConfirmCodeBloc extends Bloc<ConfirmCodeEvent, ConfirmCodeState>
    with CacheMixin {
  ConfirmCodeBloc(this.authRepository) : super(const ConfirmCodeState()) {
    on<ConfirmCodeCheckMessageEvent>(_onConfirmCode);
    on<ConfirmCodeEventInitial>(_onInitial);
    on<ConfirmCodeSendAgainEvent>(_sendAgain);
    on<CreatePatientOrderAfterNamedEvent>(_createPatientOrderNamedAfter);
  }

  final AuthRepository authRepository;
  final LocalSource _localSource = sl<LocalSource>();

  void _onInitial(
    ConfirmCodeEventInitial event,
    Emitter<ConfirmCodeState> emit,
  ) {
    if (state.confirmCodeStatus.isError) {
      emit(state.copyWith(confirmCodeStatus: ApiStatus.initial));
    }
  }

  Future<void> _onConfirmCode(
    ConfirmCodeCheckMessageEvent event,
    Emitter<ConfirmCodeState> emit,
  ) async {
    emit(state.copyWith(confirmCodeStatus: ApiStatus.loading));

    final result = await authRepository.loginOrSignup(
      phone: event.data.phone,
      pinCode: event.data.otp,
    );
    await result.fold(
      (l) {
        emit(state.copyWith(
          confirmCodeStatus: ApiStatus.error,
          errorMessage: l.message,
        ));
      },
      (tokens) async {
        await _localSource.setAccessToken(tokens.$1);
        await _localSource.setRefreshToken(tokens.$2);
        await _localSource.setHasProfile(value: true);
        emit(state.copyWith(
          confirmCodeStatus: ApiStatus.success,
          isUserFound: true,
        ));
      },
    );
  }

  Future<void> _sendAgain(
    ConfirmCodeSendAgainEvent event,
    Emitter<ConfirmCodeState> emit,
  ) async {
    final anon = _localSource.anonymousToken;
    if (anon.isEmpty) {
      emit(state.copyWith(
        confirmCodeStatus: ApiStatus.error,
        errorMessage: 'Anonymous token not found',
      ));
      return;
    }
    final result = await authRepository.sendOtp(
      phone: event.value,
      anonymousToken: anon,
    );
    result.fold(
      (l) {
        emit(state.copyWith(
          confirmCodeStatus: ApiStatus.error,
          errorMessage: l.message,
        ));
      },
      (_) {
        emit(state.copyWith(
          confirmCodeStatus: ApiStatus.success,
          isReverseSendCode: true,
        ));
      },
    );
  }

  Future<void> _createPatientOrderNamedAfter(
    CreatePatientOrderAfterNamedEvent event,
    Emitter<ConfirmCodeState> emit,
  ) async {}
}
