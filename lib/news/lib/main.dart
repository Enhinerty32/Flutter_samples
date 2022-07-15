import 'package:flutter_samples/news/lib/src/pages/tabs_page.dart';
import 'package:flutter_samples/news/lib/src/services/news_services.dart';
import 'package:flutter_samples/news/lib/src/theme/themeDark_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => NewsService())],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        home: TabsPage(),
        theme: myTema,
      ),
    );
  }
}
