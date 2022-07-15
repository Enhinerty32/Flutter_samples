import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomBottonNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        backgroundColor: Color.fromRGBO(55, 57, 84, 1),
        destinations: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, "basicDesing");
            },
            icon: Icon(
              Icons.ac_unit_outlined,
              color: Colors.white,
            ),
          )
        ]);
  }
}
