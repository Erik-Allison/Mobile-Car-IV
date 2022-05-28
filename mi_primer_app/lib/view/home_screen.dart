import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Numero de Clicks',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              '10',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
