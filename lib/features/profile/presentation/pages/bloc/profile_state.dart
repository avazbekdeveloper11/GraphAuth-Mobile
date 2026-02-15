part of 'profile_bloc.dart';

class ProfileState extends Equatable {
  const ProfileState({
    this.message,
    this.profileApiStatus = ApiStatus.none,
    this.profileData,
  });

  final String? message;
  final ApiStatus profileApiStatus;
  final GGetProfileData_profile? profileData;

  @override
  List<Object?> get props => <Object?>[
        message,
        profileApiStatus,
        profileData,
      ];

  ProfileState copyWith({
    String? message,
    ApiStatus? profileApiStatus,
    GGetProfileData_profile? profileData,
  }) =>
      ProfileState(
        message: message ?? this.message,
        profileApiStatus: profileApiStatus ?? this.profileApiStatus,
        profileData: profileData ?? this.profileData,
      );
}
