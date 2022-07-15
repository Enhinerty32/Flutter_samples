import 'package:flutter_samples/components/lib/routes/app_routes.dart';
import 'package:flutter_samples/components/lib/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const ComponentsApp());

class ComponentsApp extends StatelessWidget {
  const ComponentsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        // home: Listview2Screen(),
        initialRoute: AppRoutes.inicialRoutes,
        routes: AppRoutes.getApRoutes(),
        onGenerateRoute: AppRoutes.onGenereRoute
        /*onGenereRoute =la direcion de settings esta caendo directamente a la funcion de la clase ,
      porque podria ser *(settings) => AppRoutes.onGenereRoute(settings)* */
        ,
        theme: AppTheme.lightTheme);
  }
}
