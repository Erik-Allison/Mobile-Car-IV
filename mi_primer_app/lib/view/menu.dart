import 'package:flutter/material.dart';
import 'package:mi_primer_app/view/compNaviBar/home.dart';
import 'package:mi_primer_app/view/compNaviBar/perfil.dart';
import 'package:mi_primer_app/view/list_view.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    ListView1(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_drink_rounded),
            label: 'Lista de cervezas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil de usuario',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green[600],
        onTap: _onItemTapped,
      ),
    );
  }
}
