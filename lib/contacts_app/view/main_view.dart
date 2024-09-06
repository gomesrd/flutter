import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';

import '../helpers/generate_contact.dart';
import '../model/contact_model.dart';

class MainViewApp extends StatefulWidget {
  const MainViewApp({super.key});

  @override
  State<MainViewApp> createState() => _MainViewAppState();
}

class _MainViewAppState extends State<MainViewApp> {
  List<Contact> list = [];

  @override
  void initState() {
    list = GenerateContact.generateContactData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Contacts App'),
          automaticallyImplyLeading: false,
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Card(
                      child: ListTile(
                    title: Text(list[index].name, style: const TextStyle(fontSize: 22)),
                    subtitle: Text(list[index].email, style: const TextStyle(fontSize: 16)),
                    leading: SizedBox(
                      height: 50,
                      width: 50,
                      child: ImageNetwork(
                        image: list[index].photo,
                        height: 50,
                        width: 50,
                        borderRadius: BorderRadius.circular(25),
                        curve: Curves.easeIn,
                        fitWeb: BoxFitWeb.cover,
                        onLoading: const CircularProgressIndicator(
                          color: Colors.indigoAccent,
                        ),
                      ),
                    ),
                    trailing: const Icon(Icons.arrow_right),
                    hoverColor: Colors.blue.shade100,
                    onTap: () {
                      Navigator.pushNamed(context, '/details', arguments: list[index]);
                    },
                  ));
                })));
  }
}
