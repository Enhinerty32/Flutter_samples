import 'package:flutter_samples/desing_interface/lib/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DesingInterfaceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'basicDesing': (BuildContext context) => BasicDesingScreen(),
        'scrollScreen': (BuildContext context) => ScrollScreen(),
        'home': (BuildContext context) => (HomeScreen())
      },
    );
  }
}
