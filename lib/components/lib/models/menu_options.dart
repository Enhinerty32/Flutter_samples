import 'package:flutter/material.dart';

import 'package:flutter/material.dart' show IconData;

class MenuOptions {
  final String route;
  final IconData icon;
  final String name;
  final Widget screens;

  MenuOptions(
      {required this.route,
      required this.icon,
      required this.name,
      required this.screens});
}
