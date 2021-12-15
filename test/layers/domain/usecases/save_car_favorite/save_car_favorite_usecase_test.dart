import 'package:flutter_test/flutter_test.dart';

import 'package:for_dev/layers/domain/entities/car_entity.dart';
import 'package:for_dev/layers/domain/repositories/save_car_favorite_repository.dart';

import 'package:for_dev/layers/data/repositories/save_car_favorite_repository_impl.dart';

import 'package:for_dev/layers/domain/usecases/save_car_favorite/save_car_favorite_usecase.dart';
import 'package:for_dev/layers/domain/usecases/save_car_favorite/save_car_favorite_usecase_impl.dart';

main() {

  test('When the car passes, it must save successfully', () async {
    final SaveCarFavoriteRepository repository = SaveCarFavoriteRepositoryImpl();
    final SaveCarFavoriteUseCase useCase = SaveCarFavoriteUseCaseImpl(repository);

    final entity = CarEntity(
        plaque: 'MMZ-3442',
        quantityDoor: 2,
        value: 15000,
    );

    final response = await useCase.call(entity);

    final bool? result =  response.toOption().toNullable();

    expect(result, true);
  });
}
