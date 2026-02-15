// ignore_for_file: avoid_redundant_argument_values

import "dart:developer";
import "dart:io";

import "package:dio/dio.dart";
import "package:dio/io.dart";
import "package:dio_retry_plus/dio_retry_plus.dart";
import "package:ferry/ferry.dart";
import "package:flutter/foundation.dart";
import "package:gql_http_link/gql_http_link.dart";
import "package:gql_transform_link/gql_transform_link.dart";
import "package:graph_auth_mobile/constants/constants.dart";
import "package:graph_auth_mobile/core/connectivity/network_info.dart";
import "package:graph_auth_mobile/core/local_source/local_source.dart";
import "package:graph_auth_mobile/features/auth/data/repository/auth_repository_impl.dart";
import "package:graph_auth_mobile/features/auth/domain/repository/auth_repository.dart";
import "package:graph_auth_mobile/features/auth/presentation/bloc/confirm/confirm_code_bloc.dart";
import "package:graph_auth_mobile/features/auth/presentation/bloc/login/auth_bloc.dart";
import "package:graph_auth_mobile/features/profile/data/repository/profile_repository_impl.dart";
import "package:graph_auth_mobile/features/profile/domain/repository/profile_repository.dart";
import "package:graph_auth_mobile/features/profile/presentation/pages/bloc/profile_bloc.dart";
import "package:graph_auth_mobile/router/app_routes.dart";
import "package:get_it/get_it.dart";
import "package:go_router/go_router.dart";
import "package:hive/hive.dart";
import "package:package_info_plus/package_info_plus.dart";
import "package:path_provider/path_provider.dart";

final GetIt sl = GetIt.instance;
late Box<dynamic> _box;

Future<void> init() async {
  /// External
  await _initHive();

  /// Dio
  sl.registerLazySingleton(
    () => Dio()
      ..options = BaseOptions(
        contentType: "application/json",
        sendTimeout: const Duration(seconds: 30),
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: <String, String>{},
      )
      ..httpClientAdapter = IOHttpClientAdapter(
        createHttpClient: () {
          final HttpClient client = HttpClient()
            ..badCertificateCallback = (X509Certificate cert, String host, __) {
              log("cert: ${cert.pem}");
              log("host: $host");
              // return cert.pem == certificate;
              return true;
            };
          return client;
        },
        validateCertificate: (X509Certificate? cert, String host, __) {
          log("cert: ${cert?.pem}");
          log("host: $host");
          if (cert == null) {
            return true;
          }
          // Clipboard.setData(ClipboardData(text: cert.pem));
          return true;
          // return cert.pem == certificate;
        },
      )
      ..interceptors.add(
        LogInterceptor(
          error: kDebugMode,
          request: kDebugMode,
          requestBody: kDebugMode,
          responseBody: kDebugMode,
          requestHeader: kDebugMode,
          responseHeader: kDebugMode,
          logPrint: (Object object) {
            if (kDebugMode) {
              log("dio: $object");
            }
          },
        ),
      ),
  );

  sl.registerLazySingleton<Client>(
    () => _createFerryClient(Constants.authGraphqlUrl),
    instanceName: 'auth',
  );
  
  sl.registerLazySingleton<Client>(
    () => _createFerryClient(Constants.profileGraphqlUrl),
    instanceName: 'profile',
  );

  sl<Dio>().interceptors.addAll(<Interceptor>[
    chuck.dioInterceptor,
    RetryInterceptor(
      dio: sl<Dio>(),
      retries: 1,
      toNoInternetPageNavigator: () async {
        final RouteMatch lastMatch =
            router.routerDelegate.currentConfiguration.last;
        final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
            ? lastMatch.matches
            : router.routerDelegate.currentConfiguration;
        final String location = matchList.uri.toString();
        if (location.contains(Routes.noInternet)) {
          return;
        }
        await router.pushNamed(Routes.noInternet);
      },
      accessTokenGetter: () => "Bearer ${localSource.accessToken}",
      refreshTokenFunction: () async {
        await localSource.clear().then((_) {
          router.goNamed(Routes.initial);
        });
      },
      forbiddenFunction: () async {
        await localSource.clear().then((_) {
          router.goNamed(Routes.initial);
        });
      },
      logPrint: (String message) {
        if (kDebugMode) {
          log("dio: $message");
        }
      },
    ),
  ]);

  /// Core
  sl
    ..registerSingleton<LocalSource>(LocalSource(_box))
    ..registerLazySingleton(
      () => InternetConnectionChecker.createInstance(
        checkInterval: const Duration(seconds: 3),
      ),
    )
    ..registerSingletonAsync<PackageInfo>(PackageInfo.fromPlatform)
    ..registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  /// features
  _authFeature();
  _profileFeature();
}

Client _createFerryClient(String url) {
  return Client(
    link: Link.concat(
      TransformLink(
        requestTransformer: (request) =>
            request.updateContextEntry<HttpLinkHeaders>(
          (headers) => HttpLinkHeaders(
            headers: {
              ...headers?.headers ?? {},
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            },
          ),
        ),
      ),
      HttpLink(url),
    ),
  );
}

void _authFeature() {
  sl
    ..registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(
        authClient: sl.get<Client>(instanceName: 'auth'),
      ),
    )
    ..registerFactory(() => AuthBloc(authRepository: sl()))
    ..registerFactory(() => ConfirmCodeBloc(sl()));
}

void _profileFeature() {
  sl
    ..registerLazySingleton<ProfileRepository>(
      () => ProfileRepositoryImpl(
        profileClient: sl.get<Client>(instanceName: 'profile'),
      ),
    )
    ..registerFactory(() => ProfileBloc(profileRepository: sl()));
}

Future<void> _initHive() async {
  const String boxName = "graph_auth_mobile_box";
  final Directory directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  _box = await Hive.openBox<dynamic>(boxName);
}
