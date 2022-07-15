import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  final boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5, 0.5],
          colors: [Color(0xff5EE8C5), Color(0Xff30BAD6)]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [_Page1(), _Page2()],
        ),
      ),
    );
  }
}

class _Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0Xff30BAD6),
      child: Center(
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.blue, shape: const StadiumBorder()),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
            child: Text(
              'Toch me',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, "home");
          },
        ),
      ),
    );
  }
}

class _Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [_Background(), _MainContent()],
    );
  }
}

class _MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 55, color: Colors.white, fontWeight: FontWeight.bold);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          const Text(
            '11°',
            style: textStyle,
          ),
          const Text(
            'Miercoles',
            style: textStyle,
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
            size: 100,
          )
        ],
      ),
    );
  }
}

class _Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0Xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(
        image: AssetImage('assets/scroll-1.png'),
      ),
    );
  }
}
