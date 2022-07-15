import 'package:flutter_samples/components/lib/widgets/witgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Card'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.00),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            nameTitle: 'Un Hermoso paisaje',
            ulrImage:
                'https://www.sony.dk/image/bc6d25fa6371c2899ce704a2bed7614c?fmt=png-alpha&wid=960',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            ulrImage:
                'https://cdn3.dpmag.com/2021/07/Landscape-Tips-Mike-Mezeul-II.jpg',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            ulrImage:
                'https://photographycourse.net/wp-content/uploads/2014/11/Landscape-Photography-steps.jpg',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            ulrImage:
                'https://www.wallpapertip.com/wmimgs/29-298920_mountain-beautiful-landscape-photography.jpg',
          ),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
