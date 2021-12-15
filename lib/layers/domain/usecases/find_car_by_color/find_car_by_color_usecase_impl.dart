import 'package:dartz/dartz.dart';
import 'package:for_dev/layers/domain/entities/car_entity.dart';

import 'package:for_dev/layers/domain/repositories/find_car_by_color_repository.dart';
import 'package:for_dev/layers/domain/usecases/find_car_by_color/find_car_by_color_usecase.dart';

class FindCarByColorUseCaseImpl implements FindCarByColorUseCase {

  final FindCarByColorRepository repository;

  FindCarByColorUseCaseImpl(this.repository);

  @override
  Either<Exception, CarEntity> call(String color) {
    return this.repository.call(color);
  }
}