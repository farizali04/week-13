import 'package:flutter/material.dart';

class ColorStream {
  final List<Color> colors = [
    Colors.greenAccent,
    Colors.blue,
    Colors.red,
    Colors.yellowAccent,
    Colors.deepOrange,
  ];

  Stream<Color> getColors() async* {
    yield* Stream.periodic(
      const Duration(seconds: 1), (int t) {
        int index = t % colors.length;
        return colors[index];
      }
    );
  }
}