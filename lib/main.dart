import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:for_dev/core/inject/inject.dart';
import 'package:for_dev/layers/presentation/ui/car/car_page.dart';

main() {
  Inject.init();

  runApp(
    MaterialApp(
      home: CarPage(),
    ),
  );
}