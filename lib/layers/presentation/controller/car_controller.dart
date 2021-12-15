import 'package:for_dev/layers/domain/entities/car_entity.dart';
import 'package:for_dev/layers/domain/usecases/find_car_by_color/find_car_by_color_usecase.dart';
import 'package:for_dev/layers/domain/usecases/save_car_favorite/save_car_favorite_usecase.dart';

class CarController {
  final FindCarByColorUseCase findCarByColorUseCase;
  final SaveCarFavoriteUseCase saveCarFavoriteUseCase;

  late CarEntity carEntity;

  CarController(
    this.findCarByColorUseCase,
    this.saveCarFavoriteUseCase,
  ) {
    this.findCarByColor('RED');
  }

  void findCarByColor(String color) {
    final result = this.findCarByColorUseCase.call(color);
    result.fold(
      (error) => print(error.toString()),
      (data) => carEntity = data
    );
  }

  void saveCarFavorite(CarEntity entity) {
    final response = this.saveCarFavoriteUseCase.call(entity);
  }
}
