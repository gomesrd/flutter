import 'package:flutter/material.dart';

import '../helpers/handle_calculate.dart';

class OperationsButtons extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController controller1;
  final TextEditingController controller2;
  final void Function(double result) onResult;

  const OperationsButtons({
    super.key,
    required this.formKey,
    required this.controller1,
    required this.controller2,
    required this.onResult,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildOperationButton(context, 'sum', '+'),
        _buildOperationButton(context, 'subtract', '-'),
        _buildOperationButton(context, 'multiply', '*'),
        _buildOperationButton(context, 'divide', '/'),
      ],
    );
  }

  Widget _buildOperationButton(BuildContext context, String operation, String buttonText) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(75, 50),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(fontSize: 24),
      ),
      onPressed: () {
        handleCalculate(
          formKey: formKey,
          controller1: controller1,
          controller2: controller2,
          context: context,
          operation: operation,
          onResult: onResult,
        );
      },
      child: Text(buttonText),
    );
  }
}
