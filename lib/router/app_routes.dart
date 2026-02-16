import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:graph_auth_mobile/core/connectivity/network_info.dart";
import "package:graph_auth_mobile/core/local_source/local_source.dart";
import "package:graph_auth_mobile/features/auth/presentation/bloc/confirm/confirm_code_bloc.dart";
import "package:graph_auth_mobile/features/auth/presentation/bloc/login/auth_bloc.dart";
import "package:graph_auth_mobile/features/auth/presentation/pages/auth/auth_page.dart";
import "package:graph_auth_mobile/features/auth/presentation/pages/confirm/confirm_code_page.dart";
import "package:graph_auth_mobile/features/others/presentation/pages/splash/splash_page.dart";
import "package:graph_auth_mobile/features/profile/presentation/pages/bloc/profile_bloc.dart";
import "package:graph_auth_mobile/features/profile/presentation/pages/profile_page.dart";
import "package:graph_auth_mobile/injector_container.dart";
import "package:go_router/go_router.dart";
import "package:package_info_plus/package_info_plus.dart";

part "name_routes.dart";

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

final PackageInfo packageInfo = sl<PackageInfo>();
final NetworkInfo networkInfo = sl<NetworkInfo>();
final LocalSource localSource = sl<LocalSource>();

final GoRouter router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: Routes.initial,
  routes: <RouteBase>[
    GoRoute(
      path: Routes.initial,
      name: Routes.initial,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, __) => const SplashPage(),
    ),
    GoRoute(
      path: Routes.home,
      name: Routes.home,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, __) => BlocProvider(
        create: (context) => sl<ProfileBloc>()..add(GetProfileEvent()),
        child: const ProfilePage(),
      ),
    ),
    GoRoute(
      path: Routes.auth,
      name: Routes.auth,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, __) => BlocProvider<AuthBloc>(
        create: (_) => sl<AuthBloc>(),
        child: const AuthPage(),
      ),
    ),
    GoRoute(
      path: Routes.confirmCode,
      name: Routes.confirmCode,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, GoRouterState state) {
        final phone = state.extra as String? ?? '';
        return BlocProvider<ConfirmCodeBloc>(
          create: (_) => sl<ConfirmCodeBloc>(),
          child: ConfirmCodePage(phone: phone),
        );
      },
    ),
    GoRoute(
      path: Routes.register,
      name: Routes.register,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, __) => BlocProvider<AuthBloc>(
        create: (_) => sl<AuthBloc>(),
        child: const AuthPage(),
      ),
    ),
  ],
);
