import 'package:flutter/material.dart';

import 'calculator/calculator_view.dart';

class Exercise2 extends StatelessWidget {
  const Exercise2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CalculatorView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
