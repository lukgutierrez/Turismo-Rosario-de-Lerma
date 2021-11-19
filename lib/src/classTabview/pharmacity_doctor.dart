import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


void main() => runApp(Hospital());

class Hospital extends StatelessWidget {
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
                      AssetImage("assets/icon/hospital.png"),
                      color: Colors.black,
                      size: 80,
                    ),
                    title: Text("Hospital Dr. Joaquín Corbalán"),
                    subtitle: Text("Publico"),
                    onTap: () async {
                      const url =
                          "https://maps.google.com/maps?Tu+ubicaci%C3%B3n&daddr=Hospital+Dr.+Joaquín+Corbalán=cars";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw "Could not launch $url";
                      }
                    },
                  ),
                  ListTile(
                    leading: ImageIcon(
                      AssetImage("assets/icon/hospital.png"),
                      color: Colors.black,
                      size: 80,
                    ),
                    title: Text("IMAC"),
                    subtitle: Text("Privado"),
                    onTap: () async {
                      const url =
                          "https://maps.google.com/maps?Tu+ubicaci%C3%B3n&daddr=-24.98148375722204,-65.57330528938357=cars";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw "Could not launch $url";
                      }
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

class Famacia extends StatelessWidget {
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
                      AssetImage("assets/icon/farmacia.png"),
                      color: Colors.black,
                      size: 80,
                    ),
                    title: Text("Farmacia San Cayetano"),
                    subtitle: Text("Farmacia"),
                    onTap: () async {
                      const url = "https://maps.google.com/maps?Tu+ubicaci%C3%B3n&daddr=Farmacia+San+Cayetano=cars";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw "Could not launch $url";
                      }
                    },
                  ),
                  ListTile(
                    leading: ImageIcon(
                      AssetImage("assets/icon/farmacia.png"),
                      color: Colors.black,
                      size: 80,
                    ),
                    title: Text("Farmacia IMAC"),
                    subtitle: Text("Farmacia"),
                    onTap: () async {
                      const url = "https://maps.google.com/maps?Tu+ubicaci%C3%B3n&daddr=-24.981688,-65.5738203=cars";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw "Could not launch $url";
                      }
                    },
                  ),
                  ListTile(
                    leading: ImageIcon(
                      AssetImage("assets/icon/farmacia.png"),
                      color: Colors.black,
                      size: 80,
                    ),
                    title: Text("Farmacia Virgen de Lourdes"),
                    subtitle: Text("Farmacia"),
                    onTap: () async {
                      const url = "https://maps.google.com/maps?Tu+ubicaci%C3%B3n&daddr=Farmacia+Virgen+de+Lourdes=cars";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw "Could not launch $url";
                      }
                    },
                  ),
                  ListTile(
                    leading: ImageIcon(
                      AssetImage("assets/icon/farmacia.png"),
                      color: Colors.black,
                      size: 80,
                    ),
                    title: Text("Farmacia Pieve"),
                    subtitle: Text("Farmacia"),
                    onTap: () async {
                      const url = "https://maps.google.com/maps?Tu+ubicaci%C3%B3n&daddr=@-24.9811429,-65.5842379,17z=cars";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw "Could not launch $url";
                      }
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
