import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graph_auth_mobile/core/either/api_status.dart';
import 'package:graph_auth_mobile/core/error/failure.dart';
import 'package:graph_auth_mobile/core/local_source/local_source.dart';
import 'package:graph_auth_mobile/features/profile/data/__generated__/get_profile.data.gql.dart';
import 'package:graph_auth_mobile/features/profile/domain/repository/profile_repository.dart';
import 'package:graph_auth_mobile/injector_container.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({required this.profileRepository}) : super(const ProfileState()) {
    on<GetProfileEvent>(_getProfileEvent);
    on<LogoutEvent>(_logoutEvent);
  }

  final ProfileRepository profileRepository;

  Future<void> _logoutEvent(
    LogoutEvent event,
    Emitter<ProfileState> emit,
  ) async {
    await sl<LocalSource>().clearAuth();
    emit(state.copyWith(loggedOut: true));
  }

  Future<void> _getProfileEvent(
    GetProfileEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(profileApiStatus: ApiStatus.loading));

    final anonResult = await profileRepository.getProfile();

    await anonResult.fold(
      (Failure left) async {
        emit(state.copyWith(
          profileApiStatus: ApiStatus.error,
          message: left.message,
        ));
      },
      (data) {
        emit(
          state.copyWith(
              profileData: data, profileApiStatus: ApiStatus.success),
        );
      },
    );
  }
}
