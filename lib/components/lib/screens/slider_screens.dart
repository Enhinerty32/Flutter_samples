import 'package:flutter_samples/components/lib/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider check'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              value: _sliderValue,
              onChanged: _sliderEnable
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null),
          // Checkbox(
          //     value: _sliderEnable,
          //     onChanged: (value) {
          //       _sliderEnable = value ?? true;
          //       setState(() {});
          //     }),
          //// Switch(
          //     activeColor: AppTheme.primary,
          //     value: _sliderEnable,
          //     onChanged: (value) {
          //       _sliderEnable = value;
          //       setState(() {});
          //     }),
          CheckboxListTile(
              activeColor: AppTheme.primary,
              title: Text('Habilitar Slider'),
              value: _sliderEnable,
              onChanged: (value) {
                _sliderEnable = value ?? true;
                setState(() {});
              }),

          SwitchListTile.adaptive(
              title: Text('Habilitar Slider'),
              activeColor: AppTheme.primary,
              value: _sliderEnable,
              onChanged: (value) {
                _sliderEnable = value;
                setState(() {});
              }),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image(
                    image: const NetworkImage(
                        'https://cdn.pixabay.com/photo/2020/07/06/17/51/batman-5377804_640.png'),
                    fit: BoxFit.contain,
                    width: _sliderValue,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
