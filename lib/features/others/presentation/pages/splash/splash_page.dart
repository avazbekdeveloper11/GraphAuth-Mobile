import "dart:async";

import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:graph_auth_mobile/core/extension/extension.dart";
import "package:graph_auth_mobile/core/theme/themes.dart";

import "package:graph_auth_mobile/core/widgets/loading/circular_progress_indicator.dart";
import "package:graph_auth_mobile/core/widgets/painter/logo_painter.dart";
import "package:graph_auth_mobile/core/local_source/local_source.dart";
import "package:graph_auth_mobile/injector_container.dart";
import "package:graph_auth_mobile/router/app_routes.dart";
import "package:go_router/go_router.dart";

part "mixins/splash_mixin.dart";

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SplashMixin {
  @override
  Widget build(BuildContext context) => AnnotatedRegion<SystemUiOverlayStyle>(
        value: systemUiOverlayStyle,
        child: Scaffold(
          backgroundColor: context.colorScheme.surface,
          body: Stack(
            children: <Widget>[
              Positioned(
                left: 0,
                right: 0,
                bottom: context.padding.bottom + 24,
                child: const Center(child: CustomCircularProgressIndicator()),
              ),
              const Positioned.fill(child: Center(child: Logo(size: 25))),
            ],
          ),
        ),
      );
}
