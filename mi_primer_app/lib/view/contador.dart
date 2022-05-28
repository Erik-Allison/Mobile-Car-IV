import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({Key? key}) : super(key: key);

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int count = 10;
  @override
  Widget build(BuildContext context) {
    const siseText = TextStyle(fontSize: 24);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 241, 222, 222),
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Number Push',
                style: TextStyle(fontSize: 24),
              ),
              Text(
                '$count',
                style: siseText,
              )
            ]),
      ),
      floatingActionButton: Row(children: <Widget>[
        FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
              count--;
              setState(() {});
            }),
        FloatingActionButton(
            child: const Icon(Icons.replay),
            onPressed: () {
              count = 0;
              setState(() {});
            }),
        FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              count++;
              setState(() {});
            }),
      ]),
    );
  }
}
