import 'package:flutter/material.dart';

class Quien extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Restaurante Carne Humana',
            style: TextStyle(
              backgroundColor: Color(0xfff63d1d),
              color: Color(0xffffffff),
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Este es un restaurante sin fines de lucro que busca hacerse millonario a base de vender comida de carne de animal pero que parece carne humana.',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Desde 9/11',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontFamily: 'Roboto',
                letterSpacing: 0.5,
                fontSize: 15,
              ),
            )),
        Expanded(
            child: Image.network(
                'https://www.elsoldemexico.com.mx/incoming/91m45x-carne-humana-tokio.jpg/ALTERNATES/LANDSCAPE_960/carne-humana-tokio.jpg')),
        Expanded(
            child: Image.network(
                'https://www.gastrolabweb.com/u/fotografias/m/2022/1/26/f608x342-24792_54515_15.jpg')),
      ]),
    );
  }
}
