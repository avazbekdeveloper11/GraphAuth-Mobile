part of "../auth_page.dart";

mixin AuthMixin on State<AuthPage> {
  late TextEditingController phoneNumberController;
  late FocusNode phoneNumberFocus;
  late final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    initControllers();
  }

  void initControllers() {
    phoneNumberController = TextEditingController();
    phoneNumberFocus = FocusNode();
  }

  void disposeControllers() {
    phoneNumberController.dispose();
    phoneNumberFocus.dispose();
  }

  @override
  void dispose() {
    disposeControllers();
    super.dispose();
  }
}
