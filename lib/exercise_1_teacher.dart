import 'package:flutter/material.dart';

class Exercise1Teacher extends StatelessWidget {
  const Exercise1Teacher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercise 1 - Teacher'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 200,
                  color: Colors.red.shade100,
                  child: Center(child: Text('A', style: TextStyle(fontSize: 32))),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 200,
                  color: Colors.green.shade100,
                  child: Center(child: Text('B', style: TextStyle(fontSize: 32))),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              color: Colors.blue.shade100,
              child: Center(child: Text('C', style: TextStyle(fontSize: 32))),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 200,
                  color: Colors.yellow.shade100,
                  child: Center(child: Text('D', style: TextStyle(fontSize: 32))),
                ),
              ),
              Expanded(
                child: Container(
                  height: 200,
                  color: Colors.purple.shade100,
                  child: Center(child: Text('E', style: TextStyle(fontSize: 32))),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
