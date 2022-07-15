import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);

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
          elevation: 0,
          backgroundColor: Colors.indigo,
        ),
        body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
              title: Text(options[i]),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.indigo,
              ),
              onTap: () {
                final game = options[i];
                print(game);
              }),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: options.length,
        ));
  }
}
