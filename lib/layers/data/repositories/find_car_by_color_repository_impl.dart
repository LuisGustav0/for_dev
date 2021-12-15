import 'package:dartz/dartz.dart';

import 'package:for_dev/layers/data/datasource/find_car_by_color_datasource.dart';
import 'package:for_dev/layers/domain/entities/car_entity.dart';
import 'package:for_dev/layers/domain/repositories/find_car_by_color_repository.dart';

class FindCarByColorRepositoryImpl implements FindCarByColorRepository {

  final FindCarByColorDataSource dataSource;

  FindCarByColorRepositoryImpl(this.dataSource);

  @override
  Either<Exception, CarEntity> call(String color) {
    return this.dataSource.call(color);
  }
}