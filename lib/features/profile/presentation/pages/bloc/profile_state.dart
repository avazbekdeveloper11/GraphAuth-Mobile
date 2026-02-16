part of 'profile_bloc.dart';

class ProfileState extends Equatable {
  const ProfileState({
    this.message,
    this.profileApiStatus = ApiStatus.none,
    this.profileData,
    this.loggedOut = false,
  });

  final String? message;
  final ApiStatus profileApiStatus;
  final GGetProfileData_profile? profileData;
  final bool loggedOut;

  @override
  List<Object?> get props => <Object?>[
        message,
        profileApiStatus,
        profileData,
        loggedOut,
      ];

  ProfileState copyWith({
    String? message,
    ApiStatus? profileApiStatus,
    GGetProfileData_profile? profileData,
    bool? loggedOut,
  }) =>
      ProfileState(
        message: message ?? this.message,
        profileApiStatus: profileApiStatus ?? this.profileApiStatus,
        profileData: profileData ?? this.profileData,
        loggedOut: loggedOut ?? this.loggedOut,
      );
}
