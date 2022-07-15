import 'package:flutter/material.dart';

class PageTittle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              height: 5,
            ),
            Text(
              'Classify Transaction',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 9,
            ),
            Text(
              'Classify this transaction into a particular category',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            )
          ],
        ),
      ),
    );
  }
}
