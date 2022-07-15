import 'package:flutter_samples/desing_interface/lib/widgets/background.dart';
import 'package:flutter_samples/desing_interface/lib/widgets/card_table.dart';
import 'package:flutter_samples/desing_interface/lib/widgets/customBottonNavigator.dart';
import 'package:flutter_samples/desing_interface/lib/widgets/page_tittle.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottonNavigator(),
      body: Stack(
        children: [BackgroundWidget(), _HomeBody()],
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [PageTittle(), CardTable()],
      ),
    );
  }
}
