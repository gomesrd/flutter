import 'package:flutter/material.dart';

class ScreenChangeView extends StatelessWidget {
  const ScreenChangeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Screen Change'),
        ),
        body: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/screen_2_view');
            },
            child: const Text('Open screen 2', style: TextStyle(color: Colors.black)),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Comeback Main Menu', style: TextStyle(color: Colors.black)),
          )
        ])));
  }
}
