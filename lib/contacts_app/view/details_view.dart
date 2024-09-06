import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';

import '../model/contact_model.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({super.key});

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  Widget build(BuildContext context) {
    Contact contactData = ModalRoute.of(context)!.settings.arguments as Contact;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Details'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                // SizedBox(
                //     height: 200,
                //     width: 200,
                //     child: ImageNetwork(
                //         image: contactData.photo,
                //         height: 150,
                //         width: 150,
                //         borderRadius: BorderRadius.circular(100),
                //         fullScreen: false,
                //         onPointer: true,
                //         curve: Curves.easeIn,
                //         fitWeb: BoxFitWeb.cover,
                //         fitAndroidIos: BoxFit.cover,
                //         onLoading: const CircularProgressIndicator(
                //           color: Colors.indigoAccent,
                //         ))),

                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: ImageNetwork(
                    image: contactData.photo,
                    height: 150.0,
                    width: 100.0,
                  ),
                ),
                ListTile(
                  title: const Text('Name:', style: TextStyle(fontSize: 16)),
                  subtitle: Text(contactData.name, style: const TextStyle(fontSize: 22)),
                ),
                ListTile(
                  title: const Text('Email:', style: TextStyle(fontSize: 22)),
                  subtitle: Text(contactData.email, style: const TextStyle(fontSize: 22)),
                ),
                ListTile(
                  title: const Text('Phone:', style: TextStyle(fontSize: 22)),
                  subtitle: Text(contactData.phone, style: const TextStyle(fontSize: 22)),
                ),
                ListTile(
                  title: const Text('Address:', style: TextStyle(fontSize: 22)),
                  subtitle: Text(contactData.address, style: const TextStyle(fontSize: 22)),
                )
              ],
            )));
  }
}
