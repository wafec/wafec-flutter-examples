import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Code Sample')),
      body: PageView(
        controller: controller,
        children: <Widget>[
          Center(
              child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/otherpage');
            },
            child: const Text('Go to OtherPage'),
          )),
          const Center(child: Text('Second Page')),
          const Center(child: Text('Third Page'))
        ],
      ),
    );
  }
}
