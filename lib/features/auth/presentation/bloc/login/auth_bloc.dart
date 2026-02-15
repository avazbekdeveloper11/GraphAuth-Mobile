import "package:equatable/equatable.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:graph_auth_mobile/core/either/api_status.dart";
import "package:graph_auth_mobile/core/error/failure.dart";
import "package:graph_auth_mobile/core/mixins/cache_mixin.dart";
import "package:graph_auth_mobile/features/auth/domain/repository/auth_repository.dart";

part "auth_event.dart";

part "auth_state.dart";

class AuthBloc extends Bloc<AuthEvent, AuthState> with CacheMixin {
  AuthBloc({required this.authRepository}) : super(const AuthState()) {
    on<AccessPrivacyEvent>(_accessPrivacyEvent);
    on<LoginPhoneButtonPressedEvent>(_phoneNumberPressedHandler);
  }

  final AuthRepository authRepository;

  void _accessPrivacyEvent(
    AccessPrivacyEvent event,
    Emitter<AuthState> emit,
  ) =>
      emit(state.copyWith(privacy: !state.privacy));

  Future<void> _phoneNumberPressedHandler(
    LoginPhoneButtonPressedEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(registerStatus: ApiStatus.loading));
    final phone = event.phoneNumber.replaceAll(RegExp(r'\s'), '');
    final fullPhone = phone.startsWith('+') ? phone : '998$phone';

    final anonResult = await authRepository.getAnonymousToken();

    await anonResult.fold(
      (Failure left) async {
        emit(state.copyWith(
          registerStatus: ApiStatus.error,
          message: left.message,
        ));
      },
      (String anonToken) async {
        final otpResult = await authRepository.sendOtp(
          phone: fullPhone,
          anonymousToken: anonToken,
        );
        otpResult.fold(
          (Failure left) {
            emit(state.copyWith(
              registerStatus: ApiStatus.error,
              message: left.message,
            ));
          },
          (_) {
            emit(state.copyWith(
              registerStatus: ApiStatus.success,
              phoneForConfirm: fullPhone,
            ));
          },
        );
      },
    );
  }
}
