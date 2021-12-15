import 'package:get_it/get_it.dart';

import 'package:for_dev/layers/data/datasource/find_car_by_color_datasource.dart';
import 'package:for_dev/layers/data/datasource/local/find_car_by_color_local_datasource.dart';

import 'package:for_dev/layers/domain/repositories/find_car_by_color_repository.dart';
import 'package:for_dev/layers/data/repositories/find_car_by_color_repository_impl.dart';
import 'package:for_dev/layers/domain/repositories/save_car_favorite_repository.dart';
import 'package:for_dev/layers/data/repositories/save_car_favorite_repository_impl.dart';

import 'package:for_dev/layers/domain/usecases/find_car_by_color/find_car_by_color_usecase.dart';
import 'package:for_dev/layers/domain/usecases/find_car_by_color/find_car_by_color_usecase_impl.dart';
import 'package:for_dev/layers/domain/usecases/save_car_favorite/save_car_favorite_usecase.dart';
import 'package:for_dev/layers/domain/usecases/save_car_favorite/save_car_favorite_usecase_impl.dart';

import 'package:for_dev/layers/presentation/controller/car_controller.dart';

class Inject {

  static void init() {
    GetIt getIt = GetIt.instance;

    // datasources
    getIt.registerLazySingleton<FindCarByColorDataSource>(() =>
      FindCarByColorLocalDataSourceImpl());

    // repositories
    getIt.registerLazySingleton<FindCarByColorRepository>(() =>
      FindCarByColorRepositoryImpl(getIt()));

    getIt.registerLazySingleton<SaveCarFavoriteRepository>(() =>
      SaveCarFavoriteRepositoryImpl());

    // usecases
    getIt.registerLazySingleton<FindCarByColorUseCase>(() =>
      FindCarByColorUseCaseImpl(getIt()));

    getIt.registerLazySingleton<SaveCarFavoriteUseCase>(() =>
      SaveCarFavoriteUseCaseImpl(getIt()));

    // controllers
    getIt.registerFactory<CarController>(() =>
        CarController(getIt(), getIt()));
  }
}