import 'package:flutter/material.dart';

import 'list_exercises.dart';

void main() {
  runApp(const MainApp());

/*  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MainApp(),
    ),
  );*/
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: ListExercises());
  }
}
