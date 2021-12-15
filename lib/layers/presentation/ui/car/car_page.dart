import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:for_dev/layers/presentation/controller/car_controller.dart';

class CarPage extends StatelessWidget {
  CarPage({Key? key}) : super(key: key);

  CarController controller = GetIt.I.get<CarController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
        child: Text(this.controller.carEntity.plaque),
      ),
    );
  }
}
