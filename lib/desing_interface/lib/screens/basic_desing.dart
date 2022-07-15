import 'package:flutter/material.dart';

class BasicDesingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Imagen pricipal
          Image(image: AssetImage('assets/imageP.jpg')),

          //Titulo
          Tittle(),

          //Botones
          BottonSection()

          //Descripcion
          ,
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
                'Enim fugiat nostrud sit velit ad excepteur. In mollit ex occaecat veniam do ullamco anim. Labore qui ad laborum et aute voluptate velit incididunt amet deserunt non officia culpa ullamco. Labore anim fugiat Lorem sit pariatur sint incididunt labore occaecat officia. Do ex labore et dolor amet ex nostrud exercitation. Pariatur sint ad Lorem officia eiusmod non adipisicing duis irure.'),
          )
        ],
      ),
    );
  }
}

class Tittle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'bla bla bla bla bla bla',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('data data data', style: TextStyle(color: Colors.black45))
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41')
        ],
      ),
    );
  }
}

class BottonSection extends StatelessWidget {
  const BottonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            CustomBotton(
              color: Colors.blue,
              iconData: Icons.call,
              tittle: 'Call',
            ),
            CustomBotton(
              color: Colors.blue,
              iconData: Icons.map_sharp,
              tittle: 'Route',
            ),
            CustomBotton(
              color: Colors.blue,
              iconData: Icons.share,
              tittle: 'Share',
            )
          ],
        ));
  }
}

class CustomBotton extends StatelessWidget {
  final IconData iconData;
  final MaterialColor color;
  final String tittle;

  const CustomBotton({
    required this.iconData,
    required this.color,
    required this.tittle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, "scrollScreen");
            },
            icon: Icon(
              iconData,
              color: color,
              size: 30,
            )),
        SizedBox(
          height: 5,
        ),
        Text(tittle, style: TextStyle(color: color))
      ],
    );
  }
}
