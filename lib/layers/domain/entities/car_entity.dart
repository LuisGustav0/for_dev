class CarEntity {
  final String plaque;
  final int quantityDoor;
  final double value;

  CarEntity({
    required this.plaque,
    required this.quantityDoor,
    required this.value,
  });

  double get valueReal {
    return value * quantityDoor;
  }
}
