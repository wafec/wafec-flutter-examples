import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Screen')),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                // Navigate to the second screen when tapped
                Navigator.pushNamed(context, '/second');
              },
              child: const Text('Launch screen'))),
    );
  }
}
