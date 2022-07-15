import 'package:flutter_samples/news/lib/src/widgets/listNews_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/news_services.dart';

class Tap1Page extends StatefulWidget {
  @override
  State<Tap1Page> createState() => _Tap1PageState();
}

class _Tap1PageState extends State<Tap1Page>
    with AutomaticKeepAliveClientMixin {
  //AutomaticKeepAliveClientMixin Ayuda a mantener el estado sin destruir o modificar la pagina como lo dejamos

  @override
  Widget build(BuildContext context) {
    final newsService = Provider.of<NewsService>(context);

    return Scaffold(
        body: (newsService.headlines.length == 0)
            ? Center(child: CircularProgressIndicator())
            : ListNews(
                news: newsService.headlines,
              ));
  }

  @override
  bool get wantKeepAlive => true;
}
