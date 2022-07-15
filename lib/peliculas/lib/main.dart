import 'package:flutter_samples/peliculas/lib/providers/movie_provider.dart';
import 'package:flutter_samples/peliculas/lib/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PelisApp extends StatelessWidget {
  const PelisApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(child: const MyApp(), providers: [
      //TODO:MultiProvider:Con esto podremos llama a multiples Provider que creemos y inicializarlas en MyApp
      ChangeNotifierProvider(
        //TODO: ChangeNotifierProvider:Con esto podremos llamar y crear los Provider que hallamos creado
        create: (_) => MoviesProvider(),
        lazy: false,
        //TODO: lazy: ayuda a inicializar el Provider desde que empieza usarf
      )
    ]);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => const HomeScreen(),
        'details': (BuildContext context) => const DetailsScreen(),
      },
      theme: ThemeData.light()
          .copyWith(appBarTheme: const AppBarTheme(color: Colors.indigo)),
    );
  }
}
