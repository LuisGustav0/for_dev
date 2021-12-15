import 'package:dartz/dartz.dart';

import 'package:for_dev/layers/data/datasource/find_car_by_color_datasource.dart';
import 'package:for_dev/layers/data/models/car_model.dart';

class FindCarByColorLocalDataSourceImpl implements FindCarByColorDataSource {
  final jsonCarRed = {
    'plaque': 'NAA-7127',
    'quantityDoor': 4,
    'value': 50000.0,
  };

  final jsonCarAny = {
    'plaque': 'MVH-4234',
    'quantityDoor': 2,
    'value': 10000.0,
  };

  @override
  Either<Exception, CarModel> call(String color) {
    return 'RED'.contains(color)
        ? Right(CarModel.fromMap(jsonCarRed))
        : Right(CarModel.fromMap(jsonCarAny));
  }
}