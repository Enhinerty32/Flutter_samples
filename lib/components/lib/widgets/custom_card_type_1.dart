import 'package:flutter_samples/components/lib/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text('Soy  un titulo'),
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            subtitle: Text(
                'Commodo mollit deserunt occaecat proident dolore ipsum qui mollit deserunt anim ut. Duis culpa labore eu sit adipisicing labore. '),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancelar '),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok '),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Hay nose :('),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
