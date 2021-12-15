import 'package:dartz/dartz.dart';

import 'package:for_dev/layers/data/models/car_model.dart';

abstract class FindCarByColorDataSource {
  Either<Exception, CarModel> call(String color);
}