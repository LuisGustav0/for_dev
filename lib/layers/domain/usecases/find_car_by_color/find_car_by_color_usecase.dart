import 'package:dartz/dartz.dart';

import 'package:for_dev/layers/domain/entities/car_entity.dart';

abstract class FindCarByColorUseCase {
  Either<Exception, CarEntity> call(String color);
}