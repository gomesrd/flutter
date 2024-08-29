import 'package:flutter/material.dart';

class Screen4View extends StatelessWidget {
  const Screen4View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Screen Change 4'),
        ),
        body: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Comeback screen 3', style: TextStyle(color: Colors.black)),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            onPressed: () {
              Navigator.of(context).popUntil(ModalRoute.withName('/screen_change'));
            },
            child: const Text('Comeback Home', style: TextStyle(color: Colors.black)),
          )
        ])));
  }
}
