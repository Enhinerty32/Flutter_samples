import 'package:flutter_samples/components/lib/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imageList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      print(
        '${scrollController.position.pixels} and ${scrollController.position.maxScrollExtent}',
      );

      if (scrollController.position.pixels + 500 >=
          scrollController.position.maxScrollExtent) fetchData();
      //{
      //   // return add5();
      // }
    });
  }

  Future fetchData() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {});
    await Future.delayed(const Duration(seconds: 3));

    add5();

    isLoading = false;
    setState(() {});

    if (scrollController.position.pixels + 500 >=
        scrollController.position.maxScrollExtent) return;
    scrollController.animateTo(scrollController.position.pixels + 120,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn);
  }

  void add5() {
    final lastID = imageList.last;
    imageList.addAll([1, 2, 3, 4, 5].map((e) => lastID + e));
    setState(() {});
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 3));
    final lastID = imageList.last;
    imageList.clear();
    imageList.add(lastID + 1);
    add5();

    return;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black,
        body: MediaQuery.removePadding(
          context: context,
          removeBottom: true,
          removeRight: true,
          child: Stack(
            children: [
              RefreshIndicator(
                color: AppTheme.primary,
                onRefresh: () {
                  return onRefresh();
                },
                child: ListView.builder(
                  physics:
                      const BouncingScrollPhysics() /*TODO:(physics:BouncingScrollPhysics )rebote del scroll*/,
                  controller: scrollController,
                  itemCount: imageList.length,
                  itemBuilder: (context, i) {
                    return FadeInImage(
                        height: 300,
                        fit: BoxFit.cover,
                        placeholder: const AssetImage('assets/jar-loading.gif'),
                        image: NetworkImage(
                            'https://picsum.photos/500/300?image=${imageList[i]}'));
                  },
                ),
              ),
              if (isLoading == true)
                Positioned(
                    left: size.width * 0.5 - 30,
                    bottom: 40,
                    child: _LoadigIcon())
            ],
          ),
        ));
  }
}

class _LoadigIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9), shape: BoxShape.circle),
      child: const CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }
}
