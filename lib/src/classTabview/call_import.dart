import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(CallImport());

class CallImport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: ImageIcon(
                      AssetImage("assets/icon/hlep.png"),
                      color: Colors.black,
                      size: 80,
                    ),
                    subtitle: Text("911"),
                    title: Text("POLICIA"),
                    onTap: () {
                      launch('tel://911');
                    },
                  ),
                  ListTile(
                    leading: ImageIcon(
                      AssetImage("assets/icon/hlep.png"),
                      color: Colors.black,
                      size: 80,
                    ),
                    subtitle: Text("107"),
                    title: Text("AMBULANCIA"),
                    onTap: () {
                      launch('tel://107');
                    },
                  ),
                  ListTile(
                    leading: ImageIcon(
                      AssetImage("assets/icon/hlep.png"),
                      color: Colors.black,
                      size: 80,
                    ),
                    subtitle: Text("100"),
                    title: Text("BOMBEROS"),
                    onTap: () {
                      launch('tel://100');
                    },
                  ),
                  ListTile(
                    leading: ImageIcon(
                      AssetImage("assets/icon/hlep.png"),
                      color: Colors.black,
                      size: 80,
                    ),
                    subtitle: Text("148"),
                    title: Text("COVID-19"),
                    onTap: () {
                      launch('tel://148');
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
//TAXI REMIS

class TaxiCall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: ImageIcon(
                      AssetImage("assets/icon/taxi.png"),
                      color: Colors.black,
                      size: 60,
                    ),
                    subtitle: Text("Llamar"),
                    title: Text("TAXI MAR ROSARIO DE LERMA"),
                    onTap: () {
                      launch('tel://+543874634880');
                    },
                  ),
                  ListTile(
                    leading: ImageIcon(
                      AssetImage("assets/icon/taxi.png"),
                      color: Colors.black,
                      size: 60,
                    ),
                    subtitle: Text("Llamar"),
                    title: Text("CENTRO TAXI ROSARIO DE LERMA"),
                    onTap: () {
                      launch('tel://4932464');
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

//DELIBERY
class DeliberyCall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: ImageIcon(
                      AssetImage("assets/icon/delibery.png"),
                      color: Colors.black,
                      size: 80,
                    ),
                    subtitle: Text("Delibery de Comida"),
                    title: Text("RESTAURANT DOÑA PAULA"),
                    onTap: () {
                      launch('tel://3874686604');
                    },
                  ),
                  ListTile(
                    leading: ImageIcon(
                      AssetImage("assets/icon/delibery.png"),
                      color: Colors.black,
                      size: 80,
                    ),
                    subtitle: Text("Delibery de Comida"),
                    title: Text("EL LEGADO"),
                    onTap: () {
                      launch('tel://4931393');
                    },
                  ),
                  ListTile(
                    leading: ImageIcon(
                      AssetImage("assets/icon/delibery.png"),
                      color: Colors.black,
                      size: 80,
                    ),
                    subtitle: Text("Delibery de Comida"),
                    title: Text("ENTRE AMIGOS"),
                    onTap: () {
                      launch('tel://3874791751');
                    },
                  ),
                  ListTile(
                    leading: ImageIcon(
                      AssetImage("assets/icon/delibery.png"),
                      color: Colors.black,
                      size: 80,
                    ),
                    subtitle: Text("Delibery de Comida"),
                    title: Text("EL RINCÓN DEL ENCUENTRO"),
                    onTap: () {
                      launch('tel://4937700');
                    },
                  ),
                  ListTile(
                    leading: ImageIcon(
                      AssetImage("assets/icon/delibery.png"),
                      color: Colors.black,
                      size: 80,
                    ),
                    subtitle: Text("Delibery de Comida"),
                    title: Text("LA 125 TAQUERIA"),
                    onTap: () {
                      launch('tel://3876842643');
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
