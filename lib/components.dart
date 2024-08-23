import 'package:flutter/material.dart';

class Components extends StatelessWidget {
  const Components({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController ctrl = TextEditingController();
    TextEditingController name = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Scaffold(
        appBar: AppBar(
          title: Text('Components'),
        ),
        body: Column(children: [
          /*CONTAINER DEFAULT*/
          Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: const Column(children: [])),
          /*TEXT*/
          Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: const Column(children: [Text('Text')])),

          /*TEXT FIELD*/
          Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                TextField(
                    controller: ctrl,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Nome',
                        hintText: 'Informe seu nome',
                        icon: Icon(Icons.person)))
              ])),

          /*TEXT FORM FIELD*/
          Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                Form(
                    key: formKey,
                    child: Column(children: [
                      TextFormField(
                          decoration: const InputDecoration(labelText: 'Nome'),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Informe o seu nome';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            name = value as TextEditingController;
                          }),
                      ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState?.save();
                            print('Nome: $name');
                          }
                        },
                        child: const Text('enviar'),
                      )
                    ]))
              ])),
          Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                ElevatedButton(onPressed: () {}, onLongPress: () {}, child: Text('Clique-me'))
              ])),

          /*SNACKBAR*/
          Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                ElevatedButton(
                  onPressed: () {
                    const snackBar = SnackBar(
                      content: Text('Snackbar de exemplo'),
                      duration: Duration(seconds: 3),
                    );
                    // Exibe o Snackbar na tela
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: const Text('Exibir Snackbar'),
                )
              ])),

          /*ALERT DIALOG*/
          Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                            title: const Text('Alert Dialog'),
                            content: const Text('Conteúdo do Alert Dialog'),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Fechar'))
                            ]);
                      },
                    );
                  },
                  child: const Text('Exibir Alert Dialog'),
                )
              ])),

/*            BACKGROUND IMAGE*/
          Container(
              alignment: Alignment.topLeft,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: const Column(
                children: [],
              ))
        ]));
  }
}
