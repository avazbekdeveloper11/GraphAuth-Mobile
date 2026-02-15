import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:graph_auth_mobile/core/extension/api_status_extension.dart";
import "package:graph_auth_mobile/core/extension/extension.dart";
import "package:graph_auth_mobile/core/utils/utils.dart";
import "package:graph_auth_mobile/core/widgets/buttons/bottom_navigation_button.dart";
import "package:graph_auth_mobile/core/widgets/buttons/custom_loading_button.dart";
import "package:graph_auth_mobile/core/widgets/inputs/custom_phone_text_field.dart";
import "package:graph_auth_mobile/features/auth/presentation/bloc/login/auth_bloc.dart";
import "package:graph_auth_mobile/router/app_routes.dart";
import "package:go_router/go_router.dart";

part "mixin/auth_mixin.dart";

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> with AuthMixin {
  @override
  Widget build(BuildContext context) => BlocConsumer<AuthBloc, AuthState>(
        listener: (BuildContext context, AuthState state) async {
          if (state.registerStatus.isSuccess &&
              state.phoneForConfirm != null &&
              state.phoneForConfirm!.isNotEmpty) {
            if (!context.mounted) return;
            await context.pushNamed(
              Routes.confirmCode,
              extra: state.phoneForConfirm,
            );
          }
        },
        listenWhen: (AuthState p, AuthState c) =>
            p.registerStatus != c.registerStatus,
        builder: (BuildContext context, AuthState state) {
          return Scaffold(
            body: SafeArea(
              minimum: AppUtils.kPaddingHor16,
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    AppUtils.kGap12,
                    Text(context.tr("Phone")),
                    Text(
                      context
                          .tr("We'll send a verification code to your number"),
                    ),
                    AppUtils.kGap16,
                    CustomPhoneTextField(
                      titleText: "Phone",
                      hintText: "Enter your phone number",
                      currentFocus: phoneNumberFocus,
                      controller: phoneNumberController,
                      validator: (String? value) {
                        if (value != null && value.length == 12) {
                          return null;
                        }
                        return "Enter your phone number";
                      },
                    ),
                    AppUtils.kGap12,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Checkbox(
                            value: state.privacy,
                            onChanged: (bool? value) {
                              context
                                  .read<AuthBloc>()
                                  .add(const AccessPrivacyEvent());
                            },
                          ),
                        ),
                        AppUtils.kGap8,
                        const Expanded(
                          child: Text(
                            "By registering, you can Terms of Use and Conditions privacy",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: BottomNavigationButton(
              child: CustomLoadingButton(
                isLoading: state.registerStatus.isLoading,
                onPressed: state.privacy
                    ? () {
                        if (!_formKey.currentState!.validate()) return;
                        _formKey.currentState!.save();
                        context.read<AuthBloc>().add(
                              LoginPhoneButtonPressedEvent(
                                phoneNumber: phoneNumberController.text.trim(),
                              ),
                            );
                      }
                    : null,
                child: const Text("Continue"),
              ),
            ),
          );
        },
      );
}
