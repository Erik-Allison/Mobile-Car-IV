import 'package:flutter/material.dart';

class ListView1 extends StatelessWidget {
  ListView1({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> _cars = [
    {
      "image": "https://m.media-amazon.com/images/I/51IOiivl-AL._AC_.jpg",
      "name": "Metal Gear Solid"
    },
    {
      "image":
          "https://as01.epimg.net/meristation/imagenes/2015/04/30/reportaje/1430373600_448371_1532453664_sumario_normal.png",
      "name": "Silent Hill"
    },
    {
      "image":
          "https://store-images.s-microsoft.com/image/apps.43891.13835473807186336.5cf6bf6e-e12d-494f-a7ea-420b2c6b1a23.0c62e5ab-ea75-4447-84a9-67cd7c26e92f",
      "name": "Call Of Duty: Warzone"
    },
    {
      "image":
          "https://http2.mlstatic.com/D_NQ_NP_762835-MLB26829118476_022018-O.jpg",
      "name": "Resident Evil 2"
    },
    {
      "image":
          "https://lastfm.freetls.fastly.net/i/u/770x0/ccb84d017d1d6499b48b84502dd5716b.jpg",
      "name": "Doom"
    },
    {
      "image": "https://m.media-amazon.com/images/I/51IOiivl-AL._AC_.jpg",
      "name": "Metal Gear Solid"
    },
    {
      "image":
          "https://as01.epimg.net/meristation/imagenes/2015/04/30/reportaje/1430373600_448371_1532453664_sumario_normal.png",
      "name": "Silent Hill"
    },
    {
      "image":
          "https://store-images.s-microsoft.com/image/apps.43891.13835473807186336.5cf6bf6e-e12d-494f-a7ea-420b2c6b1a23.0c62e5ab-ea75-4447-84a9-67cd7c26e92f",
      "name": "Call Of Duty: Warzone"
    },
    {
      "image":
          "https://http2.mlstatic.com/D_NQ_NP_762835-MLB26829118476_022018-O.jpg",
      "name": "Resident Evil 2"
    },
    {
      "image":
          "https://lastfm.freetls.fastly.net/i/u/770x0/ccb84d017d1d6499b48b84502dd5716b.jpg",
      "name": "Doom"
    },
    {
      "image": "https://m.media-amazon.com/images/I/51IOiivl-AL._AC_.jpg",
      "name": "Metal Gear Solid"
    },
    {
      "image":
          "https://as01.epimg.net/meristation/imagenes/2015/04/30/reportaje/1430373600_448371_1532453664_sumario_normal.png",
      "name": "Silent Hill"
    },
    {
      "image":
          "https://store-images.s-microsoft.com/image/apps.43891.13835473807186336.5cf6bf6e-e12d-494f-a7ea-420b2c6b1a23.0c62e5ab-ea75-4447-84a9-67cd7c26e92f",
      "name": "Call Of Duty: Warzone"
    },
    {
      "image":
          "https://http2.mlstatic.com/D_NQ_NP_762835-MLB26829118476_022018-O.jpg",
      "name": "Resident Evil 2"
    },
    {
      "image":
          "https://lastfm.freetls.fastly.net/i/u/770x0/ccb84d017d1d6499b48b84502dd5716b.jpg",
      "name": "Doom"
    },
    {
      "image": "https://m.media-amazon.com/images/I/51IOiivl-AL._AC_.jpg",
      "name": "Metal Gear Solid"
    },
    {
      "image":
          "https://as01.epimg.net/meristation/imagenes/2015/04/30/reportaje/1430373600_448371_1532453664_sumario_normal.png",
      "name": "Silent Hill"
    },
    {
      "image":
          "https://store-images.s-microsoft.com/image/apps.43891.13835473807186336.5cf6bf6e-e12d-494f-a7ea-420b2c6b1a23.0c62e5ab-ea75-4447-84a9-67cd7c26e92f",
      "name": "Call Of Duty: Warzone"
    },
    {
      "image":
          "https://http2.mlstatic.com/D_NQ_NP_762835-MLB26829118476_022018-O.jpg",
      "name": "Resident Evil 2"
    },
    {
      "image":
          "https://lastfm.freetls.fastly.net/i/u/770x0/ccb84d017d1d6499b48b84502dd5716b.jpg",
      "name": "Doom"
    },
    {
      "image": "https://m.media-amazon.com/images/I/51IOiivl-AL._AC_.jpg",
      "name": "Metal Gear Solid"
    },
    {
      "image":
          "https://as01.epimg.net/meristation/imagenes/2015/04/30/reportaje/1430373600_448371_1532453664_sumario_normal.png",
      "name": "Silent Hill"
    },
    {
      "image":
          "https://store-images.s-microsoft.com/image/apps.43891.13835473807186336.5cf6bf6e-e12d-494f-a7ea-420b2c6b1a23.0c62e5ab-ea75-4447-84a9-67cd7c26e92f",
      "name": "Call Of Duty: Warzone"
    },
    {
      "image":
          "https://http2.mlstatic.com/D_NQ_NP_762835-MLB26829118476_022018-O.jpg",
      "name": "Resident Evil 2"
    },
    {
      "image":
          "https://lastfm.freetls.fastly.net/i/u/770x0/ccb84d017d1d6499b48b84502dd5716b.jpg",
      "name": "Doom"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Marcas de Carro"),
        ),
        body: ListView.builder(
            itemCount: _cars.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: Image.network(_cars[index]["image"]!).image,
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
