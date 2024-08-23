import 'package:flutter/material.dart';

class Exercise1 extends StatelessWidget {
  const Exercise1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercise 1'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  margin: const EdgeInsets.only(top: 10, left: 10),
                  padding: const EdgeInsets.all(50),
                  child: const Text('A'),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  margin: const EdgeInsets.only(top: 10, right: 10),
                  padding: const EdgeInsets.all(50),
                  child: const Text('B'),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              margin: const EdgeInsets.only(left: 10, right: 10),
              padding: const EdgeInsets.all(50),
              child: const Text('C'),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  margin: const EdgeInsets.only(left: 10, bottom: 10),
                  padding: const EdgeInsets.all(50),
                  child: const Text('D'),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  margin: const EdgeInsets.only(right: 10, bottom: 10),
                  padding: const EdgeInsets.all(50),
                  child: const Text('E'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
