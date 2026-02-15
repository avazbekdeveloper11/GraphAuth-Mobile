import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:graph_auth_mobile/constants/constants.dart";
import "package:graph_auth_mobile/core/extension/api_status_extension.dart";
import "package:graph_auth_mobile/core/utils/utils.dart";
import "package:graph_auth_mobile/features/auth/data/models/confirm/verify_request.dart";
import "package:graph_auth_mobile/features/auth/presentation/bloc/confirm/confirm_code_bloc.dart";
import "package:graph_auth_mobile/router/app_routes.dart";
import "package:go_router/go_router.dart";

class ConfirmCodePage extends StatefulWidget {
  const ConfirmCodePage({super.key, required this.phone});

  final String phone;

  @override
  State<ConfirmCodePage> createState() => _ConfirmCodePageState();
}

class _ConfirmCodePageState extends State<ConfirmCodePage> {
  final TextEditingController _codeController = TextEditingController();

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConfirmCodeBloc, ConfirmCodeState>(
      listener: (BuildContext context, ConfirmCodeState state) {
        if (state.confirmCodeStatus.isSuccess) {
          context.go(Routes.home);
        }
      },
      listenWhen: (ConfirmCodeState p, ConfirmCodeState c) =>
          p.confirmCodeStatus != c.confirmCodeStatus,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Confirmation code"),
        ),
        body: Padding(
          padding: AppUtils.kPaddingAll16,
          child: BlocBuilder<ConfirmCodeBloc, ConfirmCodeState>(
            builder: (BuildContext context, ConfirmCodeState state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  AppUtils.kGap32,
                  Text(
                    "We sent a code to ${widget.phone}",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  AppUtils.kGap16,
                  TextField(
                    controller: _codeController,
                    keyboardType: TextInputType.number,
                    maxLength: 6,
                    decoration: const InputDecoration(
                      labelText: "Code",
                      hintText: "Enter 6-digit code",
                      counterText: "",
                    ),
                  ),
                  if (state.errorMessage.isNotEmpty) ...<Widget>[
                    AppUtils.kGap8,
                    Text(
                      state.errorMessage,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  ],
                  AppUtils.kGap24,
                  ElevatedButton(
                    onPressed: state.confirmCodeStatus.isLoading
                        ? null
                        : () {
                            context.read<ConfirmCodeBloc>().add(
                                  ConfirmCodeCheckMessageEvent(
                                    data: VerifyRequestData(
                                      smsId: '',
                                      phone: widget.phone,
                                      roleId: Constants.roleId,
                                      otp: _codeController.text.trim(),
                                      clientTypeId: Constants.clientTypeId,
                                    ),
                                  ),
                                );
                          },
                    child: state.confirmCodeStatus.isLoading
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Text("Continue"),
                  ),
                  TextButton(
                    onPressed: state.confirmCodeStatus.isLoading
                        ? null
                        : () {
                            context.read<ConfirmCodeBloc>().add(
                                  ConfirmCodeSendAgainEvent(widget.phone),
                                );
                          },
                    child: const Text("Send code again"),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
