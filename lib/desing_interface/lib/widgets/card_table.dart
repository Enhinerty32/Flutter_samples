import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCardScreen(
              color: Colors.blue,
              icon: Icons.border_all,
              tittle: 'General',
            ),
            _SingleCardScreen(
              color: Colors.pink,
              icon: Icons.car_rental,
              tittle: 'Transport',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCardScreen(
              color: Colors.purple,
              icon: Icons.travel_explore,
              tittle: 'World',
            ),
            _SingleCardScreen(
              color: Colors.amber,
              icon: Icons.face,
              tittle: 'Person',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCardScreen(
              color: Colors.deepOrange,
              icon: Icons.cake_sharp,
              tittle: 'General',
            ),
            _SingleCardScreen(
              color: Colors.pink,
              icon: Icons.car_rental,
              tittle: 'Cake',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCardScreen(
              color: Colors.cyan,
              icon: Icons.free_breakfast,
              tittle: 'Coffe',
            ),
            _SingleCardScreen(
              color: Colors.green,
              icon: Icons.theater_comedy,
              tittle: 'Face to Face',
            ),
          ],
        )
      ],
    );
  }
}

class _SingleCardScreen extends StatelessWidget {
  final IconData icon;
  final Color color;

  final String tittle;

  const _SingleCardScreen(
      {required this.icon, required this.color, required this.tittle});
  @override
  Widget build(BuildContext context) {
    final column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          child: Icon(
            icon,
            size: 30,
            color: Colors.white,
          ),
          radius: 30,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          tittle,
          style: TextStyle(
            color: color,
            fontSize: 18,
          ),
        )
      ],
    );
    return _CardBackground(child: column);
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: child,
          ),
        ),
      ),
    );
  }
}
