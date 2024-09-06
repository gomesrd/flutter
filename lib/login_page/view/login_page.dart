import 'package:flutter/material.dart';

import '../../components/custom_text_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> formLoginPageKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Form(
            key: formLoginPageKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CustomTextFormField(
                    controller: email,
                    labelText: "Email",
                  ),
                  const SizedBox(height: 20),
                  CustomTextFormField(
                    controller: password,
                    labelText: "Password",
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            )));
  }
}
