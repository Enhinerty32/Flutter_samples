import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayAlertIOS(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
                title: const Text('Titeulo'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                        'Este es el contenido de mi Alertar suprema y mamadisi'),
                    SizedBox(height: 20),
                    FlutterLogo(
                      size: 100,
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Ok',
                        style: TextStyle(color: Colors.green),
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Cancelar',
                        style: TextStyle(color: Colors.red),
                      ))
                ]));
  }

  void displayAlertAndroid(BuildContext context) {
    showDialog(
        //TODO: barrierDismissible: nos ayuda a cerrar el dialogo si hacemos tocamos en la nada
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 5,
                title: const Text('Titeulo'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                        'Este es el contenido de mi Alertar suprema y mamadisi'),
                    SizedBox(height: 20),
                    FlutterLogo(
                      size: 100,
                    ),
                  ],
                ),
                actions: [
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    TextButton(onPressed: () {}, child: const Text('Ok')),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Cancelar'))
                  ])
                ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ElevatedButton(
          onPressed: () {
            Platform.isAndroid
                ? displayAlertAndroid(context)
                : displayAlertIOS(context);
            //si es android mandar a llamar condicion de Android si no llamar la da IOS
            //para colocar caso contrario colocar un !Platform.... al inicio (si no es )
          },
          child: const Text(
            'Mostrar Alerta',
          ),
          // style: ElevatedButton.styleFrom(
          //   primary: AppTheme.primary,
          //   shape: const StadiumBorder(),
          //   elevation: 0,)
        )),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ));
  }
}
