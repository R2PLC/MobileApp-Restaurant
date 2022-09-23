import 'package:flutter/material.dart';
import 'package:mtarturo/Contacto.dart';
import 'package:mtarturo/Quien.dart';
import 'package:mtarturo/Resenas.dart';
import 'package:mtarturo/Web.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bottom Navigation Bar',
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final List<Widget> screens = [
    Quien(),
    Contacto(),
    WebViewExample(),
    Review(),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xfff63d1d),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white70,
            iconSize: 40,
            //selectedFontSize: 25,
            //unselectedFontSize: 16,
            // showSelectedLabels: false,
            // showUnselectedLabels: false,
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.question_mark),
                label: '¿Quiénes somos?',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.phone),
                label: 'Contacto',
                //backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.web),
                label: 'Página Web',
                //backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star),
                label: 'Reseñas',
                //backgroundColor: Colors.blue,
              ),
            ]),
      );
}
