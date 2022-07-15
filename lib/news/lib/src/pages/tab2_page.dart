import 'package:flutter_samples/news/lib/src/models/category_models.dart';
import 'package:flutter_samples/news/lib/src/services/news_services.dart';
import 'package:flutter_samples/news/lib/src/theme/themeDark_theme.dart';
import 'package:flutter_samples/news/lib/src/widgets/listNews_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Tab2Page extends StatefulWidget {
  @override
  State<Tab2Page> createState() => _Tab2PageState();
}

class _Tab2PageState extends State<Tab2Page> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final newsService = Provider.of<NewsService>(context);

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            _CategoryList(),
            newsService.selectedCategory.isEmpty
                ? Expanded(
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.fact_check_sharp, color: Colors.red, size: 50),
                      Text(
                        'Selecciona una Categoria',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ))
                : Expanded(
                    child: (newsService.getPostArticleCategory?.length == 0)
                        ? Center(child: CircularProgressIndicator())
                        : ListNews(news: newsService.getPostArticleCategory!))
          ],
        ),
      ),
    );
  }
}

class _CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = Provider.of<NewsService>(context).categoryNews;

    return Container(
      width: double.infinity,
      height: 90,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: category.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            final cName = category[index].name;
            return Container(
              width: 105,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  _CategoryButton(category: category[index]),
                  const SizedBox(height: 5),
                  Text('${cName[0].toUpperCase()}${cName.substring(1)}')
                ]),
              ),
            );
          })),
    );
  }
}

class _CategoryButton extends StatelessWidget {
  final Category category;
  const _CategoryButton({required this.category});

  @override
  Widget build(BuildContext context) {
    final newsService = Provider.of<NewsService>(context);

    return GestureDetector(
      onTap: () {
        final newsService = Provider.of<NewsService>(context, listen: false);
        newsService.selectedCategory = category.name;
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        width: 40,
        height: 40,
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        child: Icon(category.icon,
            color: newsService.selectedCategory == this.category.name
                ? accentColor
                : Colors.black54),
      ),
    );
  }
}
