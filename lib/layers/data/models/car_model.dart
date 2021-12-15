import 'package:for_dev/layers/domain/entities/car_entity.dart';

class CarModel extends CarEntity {
  final String plaque;
  final int quantityDoor;
  final double value;

  CarModel({
    required this.plaque,
    required this.quantityDoor,
    required this.value,
  }) : super(
          plaque: plaque,
          quantityDoor: quantityDoor,
          value: value,
        );

  Map toMap() {
    return {
      plaque: this.plaque,
      quantityDoor: this.quantityDoor,
      value: this.value,
    };
  }

  static CarModel fromMap(Map map) {
    return CarModel(
      plaque: map['plaque'],
      quantityDoor: map['quantityDoor'],
      value: map['value'],
    );
  }
}
