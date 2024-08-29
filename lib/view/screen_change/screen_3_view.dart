import 'package:flutter/material.dart';

class Screen3View extends StatelessWidget {
  const Screen3View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Screen Change 3'),
        ),
        body: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/screen_4_view');
            },
            child: const Text('Open screen 4', style: TextStyle(color: Colors.black)),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Close screen 3', style: TextStyle(color: Colors.black)),
          )
        ])));
  }
}
