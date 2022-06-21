import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  static const TextStyle optionStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white);
  static const TextStyle optionTitleStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black,);
  static const TextStyle optionBodyStyle = TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil de usuario'),
        backgroundColor: Colors.green[400],
      ),
      backgroundColor: Colors.brown[50],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          header(),
          info_city(optionStyle: optionStyle),
          body(optionTitleStyle: optionTitleStyle, optionBodyStyle: optionBodyStyle),
        ],
      ),
    );
  }
}

class body extends StatelessWidget {
  const body({
    Key? key,
    required this.optionTitleStyle,
    required this.optionBodyStyle,
  }) : super(key: key);

  final TextStyle optionTitleStyle;
  final TextStyle optionBodyStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children:[
              
              Text('Estudios Realizados:', style: optionTitleStyle,),
              Text('Ingenieria de Sistemas\n\n', style: optionBodyStyle,),
              
              Text('Universidad:', style: optionTitleStyle),
              Text(
                'Corporacion Universitaria Rafael Nuñez\n\n',
                style: optionBodyStyle,
              ),

              Text('Experiencia laboral:', style: optionTitleStyle,),
              Text('Telefonica Movistar: MDF Recorredor', style: optionBodyStyle,),
              
              Text('LSV-Tech: Desarrollador en formación', style: optionBodyStyle,),
            ],
          ),
        ],
      ),
    );
  }
}

class info_city extends StatelessWidget {
  const info_city({
    Key? key,
    required this.optionStyle,
  }) : super(key: key);

  final TextStyle optionStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(248, 109, 124, 151),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text('País: Colombia',style: optionStyle,)
            ],
          ),
          Column(
            children: [
              Text('Ciudad: Cartagena',style: optionStyle)
            ],
          )
        ],
      ),
    );
  }
}

class header extends StatelessWidget {
  const header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown[50],
      height: 200,
      padding: const EdgeInsets.only(bottom: 10),
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/erik.jpeg'),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.rectangle,
              border: Border.all(
                color: Colors.blue,
                width: 5,
              ),
            ),
            padding: EdgeInsets.only(bottom: 5),
          ),
          Text("Erik Herazo Jimenez",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green[400],
              )),
        ],
      ),
    );
  }
}