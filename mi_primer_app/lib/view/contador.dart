import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({Key? key}) : super(key: key);

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int count = 10;
  void increment() {
    count++;
    setState(() {});
  }

  void decrement() {
    count--;
    setState(() {});
  }

  void restart() {
    count = 0;
    setState(() {});
  }

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
      floatingActionButton: CustomFloatingActionButtonLocation(
        increaseFn: increment,
        decreaseFn: decrement,
        restarFn: restart,
      ),
    );
  }
}

class CustomFloatingActionButtonLocation extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function restarFn;
  const CustomFloatingActionButtonLocation({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.restarFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      FloatingActionButton(
          child: const Icon(Icons.remove), onPressed: () => decreaseFn()),
      FloatingActionButton(
          child: const Icon(Icons.replay), onPressed: () => restarFn()),
      FloatingActionButton(
          child: const Icon(Icons.add), onPressed: () => increaseFn()),
    ]);
  }
}
