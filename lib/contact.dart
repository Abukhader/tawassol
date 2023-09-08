import 'package:flutter/material.dart';
import "package:flag/flag.dart";

class ContactsPage extends StatelessWidget {
  final String name;
  final String phoneNumber1;
  final String phoneNumber2;
  final String imagePath;

  static const String routeName = '/contact';

  ContactsPage(
      {required this.name,
      required this.phoneNumber1,
      required this.phoneNumber2,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(imagePath),
              radius: 80,
            ),
            const SizedBox(height: 20),
            Text(
              name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              phoneNumber1,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              phoneNumber2,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 40),
            Flags.fromCode(
              const [
                FlagsCode.JO,
                FlagsCode.SY,
              ],
              height: 70,
              width: 70 * 4 / 3,
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ContactsPage(
      name: 'Mohammad Abukhader',
      phoneNumber1: '+963992219084',
      phoneNumber2: '+962793370572',
      imagePath: 'images/profilepic.jpeg',
    ),
  ));
}
