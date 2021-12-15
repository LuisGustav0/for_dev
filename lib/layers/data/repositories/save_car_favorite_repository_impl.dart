import 'package:dartz/dartz.dart';

import 'package:for_dev/layers/domain/entities/car_entity.dart';
import 'package:for_dev/layers/domain/repositories/save_car_favorite_repository.dart';

class SaveCarFavoriteRepositoryImpl implements SaveCarFavoriteRepository {

  @override
  Future<Either<Exception, bool>> call(CarEntity entity) async {
    return Right(entity.value > 0);
  }
}