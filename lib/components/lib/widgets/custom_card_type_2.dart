import 'package:flutter/material.dart';
import 'package:flutter_samples/components/lib/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  final String ulrImage;
  final String? nameTitle;

  const CustomCardType2({Key? key, required this.ulrImage, this.nameTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        shadowColor: AppTheme.primary.withOpacity(0.6),
        elevation: 35,
        child: Column(
          children: [
            FadeInImage(
              image: NetworkImage(ulrImage),
              placeholder: const AssetImage('assets/jar-loading.gif'),
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 300),
            ),
            if (nameTitle != null)
              Container(
                  alignment: AlignmentDirectional.centerEnd,
                  padding:
                      const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                  child: Text('$nameTitle')),
          ],
        ));
  }
}
