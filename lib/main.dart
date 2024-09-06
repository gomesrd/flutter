import 'package:flutter/material.dart';

import 'components.dart';
import 'contacts_app/view/details_view.dart';
import 'contacts_app/view/main_view.dart';
import 'exercise_1.dart';
import 'exercise_1_teacher.dart';
import 'exercise_2.dart';
import 'list_exercises.dart';
import 'login_page/main.dart';
import 'screen_change/view/screen_2_view.dart';
import 'screen_change/view/screen_3_view.dart';
import 'screen_change/view/screen_4_view.dart';
import 'screen_change/view/screen_change_view.dart';

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
        '/login_page': (context) => const Main(),
        '/main_app_contacts': (context) => const MainViewApp(),
        '/details': (context) => const DetailsView()
      },
    );
  }
}

// stl - stateless widget
// stf - stateful widget
