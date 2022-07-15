import 'package:flutter_samples/components/lib/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar'),
        actions: [
          Container(
              padding: const EdgeInsets.only(right: 5),
              child: CircleAvatar(
                  backgroundColor: Colors.indigo[900], child: const Text('SL')))
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage(
              'https://terrigen-cdn-dev.marvel.com/content/prod/1x/ejl-r9dwkaejkvu.jpg'),
        ),
      ),
    );
  }
}
