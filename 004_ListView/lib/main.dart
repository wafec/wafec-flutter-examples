import 'package:flutter/material.dart';
import 'package:my_app/beautiful_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView '),
        ),
        body: const BeautifulList()
      ),
    );
  }
}