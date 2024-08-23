import 'package:fatec_flutter_project/components.dart';
import 'package:fatec_flutter_project/exercise_1.dart';
import 'package:fatec_flutter_project/exercise_1_teacher.dart';
import 'package:fatec_flutter_project/exercise_2.dart';
import 'package:flutter/material.dart';

class ListExercises extends StatelessWidget {
  const ListExercises({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fatec - Mobile Programming'),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Components()),
              );
            },
            child: const Text('Components'),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Exercise1()),
              );
            },
            child: const Text('Exercise 1'),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Exercise1Teacher()),
              );
            },
            child: const Text('Exercise 1 - Teacher'),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Exercise2()),
              );
            },
            child: const Text('Exercise 2'),
          ),
        ],
      ),
    );
  }
}
