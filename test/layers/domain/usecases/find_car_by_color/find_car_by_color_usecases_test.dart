import 'package:flutter_test/flutter_test.dart';

import 'package:for_dev/layers/data/datasource/find_car_by_color_datasource.dart';
import 'package:for_dev/layers/data/datasource/local/find_car_by_color_local_datasource.dart';
import 'package:for_dev/layers/data/repositories/find_car_by_color_repository_impl.dart';

import 'package:for_dev/layers/domain/repositories/find_car_by_color_repository.dart';
import 'package:for_dev/layers/domain/usecases/find_car_by_color/find_car_by_color_usecase.dart';
import 'package:for_dev/layers/domain/usecases/find_car_by_color/find_car_by_color_usecase_impl.dart';

main() {

  test('When passed color red Must return plate MKJ-0977', () {
    final FindCarByColorDataSource dataSource = FindCarByColorLocalDataSourceImpl();
    final FindCarByColorRepository repository = FindCarByColorRepositoryImpl(dataSource);
    final FindCarByColorUseCase useCase = FindCarByColorUseCaseImpl(repository);

    final response = useCase.call('RED');
    final entity = response.toOption().toNullable();
    
    expect(entity?.plaque, 'NAA-7127');
  });

  test('When passed any color Must return plate MKJ-0977', () {
    final FindCarByColorDataSource dataSource = FindCarByColorLocalDataSourceImpl();
    final FindCarByColorRepository repository = FindCarByColorRepositoryImpl(dataSource);
    final FindCarByColorUseCase useCase = FindCarByColorUseCaseImpl(repository);

    final response = useCase.call('BLUE');
    final entity = response.toOption().toNullable();

    expect(entity?.plaque, 'MVH-4234');
  });
}
