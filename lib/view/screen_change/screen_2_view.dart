import 'package:flutter/material.dart';

class Screen2View extends StatelessWidget {
  const Screen2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Screen Change 2'),
        ),
        body: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/screen_3_view');
            },
            child: const Text('Open screen 3', style: TextStyle(color: Colors.black)),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Close screen 2', style: TextStyle(color: Colors.black)),
          )
        ])));
  }
}
