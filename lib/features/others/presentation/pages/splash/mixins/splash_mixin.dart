part of "../splash_page.dart";

mixin SplashMixin on State<SplashPage> {
  @override
  void initState() {
    super.initState();
    if (!mounted) {
      return;
    }
    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) {
        return;
      }
      nextToNavigation();
    });
  }

  void nextToNavigation() {
    if (!mounted) return;
    final localSource = sl<LocalSource>();
    final hasToken = localSource.accessToken.isNotEmpty;
    if (hasToken) {
      context.goNamed(Routes.home);
    } else {
      context.goNamed(Routes.auth);
    }
  }
}
