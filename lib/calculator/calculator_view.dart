import 'package:flutter/material.dart';

import 'components/custom_text_form_field.dart';
import 'components/operations_buttons.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  final GlobalKey<FormState> formCalculatorKey = GlobalKey<FormState>();
  TextEditingController textValue1 = TextEditingController();
  TextEditingController textValue2 = TextEditingController();
  double? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Fatec - Mobile Programming'),
        ),
        body: Form(
          key: formCalculatorKey,
          child: Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 60),
              child: Column(children: [
                const Icon(Icons.calculate, size: 160),
                CustomTextFormField(
                  controller: textValue1,
                  labelText: "Value 1",
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  controller: textValue2,
                  labelText: "Value 2",
                ),
                const SizedBox(height: 30),
                OperationsButtons(
                  formKey: formCalculatorKey,
                  controller1: textValue1,
                  controller2: textValue2,
                  onResult: (double result) {
                    setState(() {
                      this.result = result;
                    });
                  },
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        readOnly: true,
                        enabled: false,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          label: Text('Result: ${result?.toStringAsFixed(2) ?? ""}'),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        setState(() {
                          textValue1.clear();
                          textValue2.clear();
                          result = null;
                        });
                      },
                    ),
                  ],
                ),
              ])),
        ));
  }
}
