import 'package:flutter/material.dart';
import 'package:mi_primer_app/view/list_view.dart';
/* import 'package:mi_primer_app/view/contador.dart';
import 'package:mi_primer_app/view/count_screen.dart';
import 'package:mi_primer_app/view/home_screen.dart';
 */


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: ListView1());
  }
}
