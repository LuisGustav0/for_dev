import 'package:dartz/dartz.dart';

import 'package:for_dev/layers/domain/entities/car_entity.dart';

abstract class SaveCarFavoriteRepository {
  Future<Either<Exception, bool>> call(CarEntity entity);
}