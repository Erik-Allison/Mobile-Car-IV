import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(const Home());

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: const Text('!Bienvenido...'),
          backgroundColor: Colors.green[400],
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'World Beer',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[400],
                ),
              ),
              SizedBox(
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                    image: const DecorationImage(image: AssetImage("assets/images/brindis.jpg"),fit: BoxFit.cover),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
