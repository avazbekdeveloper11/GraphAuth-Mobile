import "dart:io";

import "package:ferry/ferry.dart";
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
import "package:get_it/get_it.dart";
import "package:hive/hive.dart";
import "package:package_info_plus/package_info_plus.dart";
import "package:path_provider/path_provider.dart";

final GetIt sl = GetIt.instance;
late Box<dynamic> _box;

Future<void> init() async {
  await _initHive();

  sl.registerLazySingleton<Client>(
    () => _createFerryClient(Constants.authGraphqlUrl),
    instanceName: 'auth',
  );
  
  sl.registerLazySingleton<Client>(
    () => _createFerryClient(Constants.profileGraphqlUrl),
    instanceName: 'profile',
  );

  sl
    ..registerSingleton<LocalSource>(LocalSource(_box))
    ..registerLazySingleton(
      () => InternetConnectionChecker.createInstance(
        checkInterval: const Duration(seconds: 3),
      ),
    )
    ..registerSingletonAsync<PackageInfo>(PackageInfo.fromPlatform)
    ..registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

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
        authRepository: sl<AuthRepository>(),
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
