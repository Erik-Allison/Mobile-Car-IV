import 'package:flutter/material.dart';

class ListView1 extends StatefulWidget {
  const ListView1({Key? key}) : super(key: key);

  @override
  State<ListView1> createState() => _ListView1State();
}

class _ListView1State extends State<ListView1> {
  final List<Map<String, dynamic>> _cars = [
    {
      "image":
          'https://www.lavanguardia.com/files/og_thumbnail/uploads/2021/09/02/6130d99519f60.png',
      "name": 'Roblox',
    },
    {
      "image":
          'https://articles-images.sftcdn.net/wp-content/uploads/sites/2/2015/10/silent1.jpg',
      "name": 'Silent Hills',
    },
    {
      "image":
          'https://media.vandal.net/i/1200x630/11-2021/2021111012201145_1.jpg',
      "name": 'Forza Horizon 5',
    },
    {
      "image":
          'https://compass-ssl.xbox.com/assets/9c/94/9c944d9c-7ef1-4b46-9f68-9b02966d3993.jpg?n=Halo-Infinite_GLP-Page-Hero-0_1083x609.jpg',
      "name": 'Halo Infinite',
    },
    {
      "image":
          'https://compass-ssl.xbox.com/assets/9c/94/9c944d9c-7ef1-4b46-9f68-9b02966d3993.jpg?n=Halo-Infinite_GLP-Page-Hero-0_1083x609.jpg',
      "name": 'Halo Infinite',
    },
    {
      "image":
          'https://www.lavanguardia.com/files/og_thumbnail/uploads/2021/09/02/6130d99519f60.png',
      "name": 'Roblox',
    },
    {
      "image":
          'https://articles-images.sftcdn.net/wp-content/uploads/sites/2/2015/10/silent1.jpg',
      "name": 'Silent Hills',
    },
    {
      "image":
          'https://media.vandal.net/i/1200x630/11-2021/2021111012201145_1.jpg',
      "name": 'Forza Horizon 5',
    },
    {
      "image":
          'https://compass-ssl.xbox.com/assets/9c/94/9c944d9c-7ef1-4b46-9f68-9b02966d3993.jpg?n=Halo-Infinite_GLP-Page-Hero-0_1083x609.jpg',
      "name": 'Halo Infinite',
    },
    {
      "image":
          'https://compass-ssl.xbox.com/assets/9c/94/9c944d9c-7ef1-4b46-9f68-9b02966d3993.jpg?n=Halo-Infinite_GLP-Page-Hero-0_1083x609.jpg',
      "name": 'Halo Infinite',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: const Text("Beer List"),
        ),
        body: ListView.builder(
            itemCount: _cars.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: Image.network(_cars[index]["image"]!,errorBuilder: (context, error, stackTrace) =>
                    const SizedBox.shrink(),
                  ).image,
                ),
                title: Text(_cars[index]["name"]!),
                onTap: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Text(_cars[index]["name"]!),
                    content:
                        Text('Seleccionaste la marca ${_cars[index]["name"]}'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
