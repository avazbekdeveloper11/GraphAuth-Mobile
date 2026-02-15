part of "auth_bloc.dart";

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class AccessPrivacyEvent extends AuthEvent {
  const AccessPrivacyEvent();

  @override
  List<Object?> get props => [];
}

/// Telefon raqamni kiritib "Kod so'rash" bosilganda.
class LoginPhoneButtonPressedEvent extends AuthEvent {
  const LoginPhoneButtonPressedEvent({required this.phoneNumber});

  final String phoneNumber;

  @override
  List<Object?> get props => <Object?>[phoneNumber];
}
