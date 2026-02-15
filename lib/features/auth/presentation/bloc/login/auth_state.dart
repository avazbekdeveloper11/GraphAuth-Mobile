part of "auth_bloc.dart";

class AuthState extends Equatable {
  const AuthState({
    this.message,
    this.privacy = false,
    this.registerStatus = ApiStatus.none,
    this.phoneForConfirm,
  });

  final String? message;
  final bool privacy;
  final ApiStatus registerStatus;

  /// Telefon raqam — OTP yuborilgach confirm sahifasiga o'tkazish uchun.
  final String? phoneForConfirm;

  @override
  List<Object?> get props =>
      <Object?>[message, privacy, registerStatus, phoneForConfirm];

  AuthState copyWith({
    String? message,
    bool? privacy,
    ApiStatus? registerStatus,
    String? phoneForConfirm,
  }) =>
      AuthState(
        message: message ?? this.message,
        privacy: privacy ?? this.privacy,
        registerStatus: registerStatus ?? this.registerStatus,
        phoneForConfirm: phoneForConfirm ?? this.phoneForConfirm,
      );
}
