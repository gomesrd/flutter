import 'package:flutter/material.dart';

void handleCalculate({
  required GlobalKey<FormState> formKey,
  required TextEditingController controller1,
  required TextEditingController controller2,
  required BuildContext context,
  required String operation,
  required void Function(double result) onResult,
}) {
  if (formKey.currentState!.validate()) {
    formKey.currentState!.save();
    double value1 = double.parse(controller1.text);
    double value2 = double.parse(controller2.text);
    double result;

    switch (operation) {
      case 'sum':
        result = value1 + value2;
        break;
      case 'subtract':
        result = value1 - value2;
        break;
      case 'multiply':
        result = value1 * value2;
        break;
      case 'divide':
        if (value2 != 0) {
          result = value1 / value2;
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Erro: Não é possível dividir por zero.'),
              duration: Duration(seconds: 4),
              backgroundColor: Colors.red,
            ),
          );
          return;
        }
        break;
      default:
        throw UnsupportedError('Operação desconhecida: $operation');
    }
    onResult(result);
  }
}
