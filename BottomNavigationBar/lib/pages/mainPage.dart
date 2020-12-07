import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:navi/constantes/main.Page.dart';
import 'package:navi/widget/pageOne.dart';
import 'package:navi/widget/pageTwo.dart';

class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  int itemSelect = 0;

  List<Widget> opciones = <Widget>[
    One(),
    Two(),
    SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey,
        child: Column(
          children: [
            Center(
              child: Text("Hello word",
              style: textW,),
            ),
            Center(
              child: Text("All "),
            ),
          ],
        ),
      ),
    ),
  ];

  void opcionElegida(int index) {
    setState(() {
      itemSelect = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: opciones.elementAt(itemSelect),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.tshirt),
            label: 'Clothing',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.table),
            label: 'furniture',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.evernote),
            label: 'Team',
          ),
        ],
        currentIndex: itemSelect,
        onTap: opcionElegida,
        selectedItemColor: Colors.black,
      ),
    );
  }
}
