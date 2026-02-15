part of "confirm_code_bloc.dart";

class ConfirmCodeState extends Equatable {
  const ConfirmCodeState({
    this.isUserFound = false,
    this.isReverseSendCode = false,
    this.confirmCodeStatus = ApiStatus.initial,
    this.smsId = "",
    this.errorMessage = "",
  });

  final bool isUserFound;
  final bool isReverseSendCode;
  final ApiStatus confirmCodeStatus;
  final String smsId;
  final String errorMessage;

  @override
  List<Object?> get props => <Object?>[
        isReverseSendCode,
        isUserFound,
        confirmCodeStatus,
        smsId,
        errorMessage,
      ];

  ConfirmCodeState copyWith({
    bool? isReverseSendCode,
    bool? isUserFound,
    ApiStatus? confirmCodeStatus,
    String? smsId,
    String? errorMessage,
  }) =>
      ConfirmCodeState(
        isReverseSendCode: isReverseSendCode ?? this.isReverseSendCode,
        isUserFound: isUserFound ?? this.isUserFound,
        confirmCodeStatus: confirmCodeStatus ?? this.confirmCodeStatus,
        smsId: smsId ?? this.smsId,
        errorMessage: errorMessage ?? this.errorMessage,
      );
}
