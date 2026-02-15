import "dart:io";

import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "package:graph_auth_mobile/app.dart";
import "package:graph_auth_mobile/app_options.dart";
import "package:graph_auth_mobile/core/utils/utils.dart";
import "package:graph_auth_mobile/core/widgets/native_splash/flutter_native_splash.dart";
import "package:graph_auth_mobile/injector_container.dart" as di;
import "package:graph_auth_mobile/router/app_routes.dart";

void main() async {
  final WidgetsBinding binding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: binding);

  if (kDebugMode) {
    Bloc.observer = LogBlocObserver();
  }
  await di.init();

  HttpOverrides.global = _HttpOverrides();
  runApp(
    ModelBinding(
      initialModel: AppOptions(
        themeMode: ThemeMode.light,
        // themeMode: localSource.themeMode,
        locale: Locale(localSource.locale),
      ),
      child: const App(),
    ),
  );
  FlutterNativeSplash.remove();
}

class _HttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) =>
      super.createHttpClient(context)
        ..badCertificateCallback = (_, __, ___) => true;
}
