import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);

  final options = const [
    'Megaman',
    'Metal Gears',
    'Super Smash',
    'Final Fantasy'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 2'),
        ),
        body: ListView(
          children: [
            ...options.map((game) {
              return ListTile(
                title: Text(game),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
              );
            }).toList()
//.map = es el recopilador y entrega de cada objeto de la lista
//.tolist()= crea una lista
//variable game= es cada objeto de la lista
//... = es un comando que ayuda a que usemos .tolist() dentro de children
          ],
        ));
  }
}
