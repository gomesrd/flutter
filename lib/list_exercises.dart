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
              Navigator.pushNamed(context, '/components');
            },
            child: const Text('Components'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/exercise_1');
            },
            child: const Text('Exercise 1'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/exercise_1_teacher');
            },
            child: const Text('Exercise 1 - Teacher'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/exercise_2');
            },
            child: const Text('Exercise 2'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/screen_change');
            },
            child: const Text('Screen Change Example'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login_page');
            },
            child: const Text('Login Page'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/main_app_contacts');
            },
            child: const Text('Contacts App'),
          ),
        ],
      ),
    );
  }
}
