import 'package:dartz/dartz.dart';

import 'package:for_dev/layers/domain/entities/car_entity.dart';
import 'package:for_dev/layers/domain/repositories/save_car_favorite_repository.dart';
import 'package:for_dev/layers/domain/usecases/save_car_favorite/save_car_favorite_usecase.dart';

class SaveCarFavoriteUseCaseImpl implements SaveCarFavoriteUseCase {

  final SaveCarFavoriteRepository repository;

  SaveCarFavoriteUseCaseImpl(this.repository);

  @override
  Future<Either<Exception, bool>> call(CarEntity entity) async {
    return await this.repository.call(entity);
  }
}