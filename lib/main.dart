import 'package:fatec_flutter_project/components.dart';
import 'package:fatec_flutter_project/exercise_1.dart';
import 'package:fatec_flutter_project/exercise_1_teacher.dart';
import 'package:fatec_flutter_project/exercise_2.dart';
import 'package:fatec_flutter_project/list_exercises.dart';
import 'package:fatec_flutter_project/view/screen_change/screen_2_view.dart';
import 'package:fatec_flutter_project/view/screen_change/screen_3_view.dart';
import 'package:fatec_flutter_project/view/screen_change/screen_4_view.dart';
import 'package:fatec_flutter_project/view/screen_change/screen_change_view.dart';
import 'package:flutter/material.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ListExercises(),
      routes: {
        '/components': (context) => const Components(),
        '/exercise_1': (context) => const Exercise1(),
        '/exercise_1_teacher': (context) => const Exercise1Teacher(),
        '/exercise_2': (context) => const Exercise2(),
        '/screen_change': (context) => const ScreenChangeView(),
        '/screen_2_view': (context) => const Screen2View(),
        '/screen_3_view': (context) => const Screen3View(),
        '/screen_4_view': (context) => const Screen4View(),
      },
    );
  }
}

// stl - stateless widget
// stf - stateful widget
