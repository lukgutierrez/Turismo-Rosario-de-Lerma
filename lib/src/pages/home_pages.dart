import 'package:flutter/material.dart';
import 'package:turismorosariodelerma/src/pages/categoria_rdl.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imagenesLista = [
  'assets/icon/evita.jpg',
  'assets/icon/rita.jpg',
  'assets/icon/rafael.jpg',
  'assets/icon/salud.jpg',
  'assets/icon/rosario.jpg',
  'assets/icon/plaza.jpg',
];

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Turismo Rosario de Lerma",
        theme: ThemeData(primaryColor: Colors.black),
        debugShowCheckedModeBanner: false,
        home: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/icon/fondo.jpg"),
                    fit: BoxFit.cover)),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 250,
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 200,
                          height: 170,
                          decoration: BoxDecoration(
                              border: Border.all(width: 4, color: Colors.white),
                              image: DecorationImage(
                                  image: AssetImage("assets/icon/logi.png"),
                                  fit: BoxFit.cover),
                              shape: BoxShape.circle),
                        ),
                        Divider(),
                        Center(
                          child: Text(
                            "BIENVENIDOs A ROSARIO DE LERMA".toUpperCase(),
                            style: TextStyle(
                                fontSize: 19.5,
                                color: Colors.white,
                                fontFamily: "fuentea"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //SLIDER IMAGENES
                  Center(
                    child: CarouselSlider(
                      options: CarouselOptions(
                        viewportFraction: 0.6,
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 5),
                        autoPlay: true,
                        enlargeCenterPage: true,
                      ),
                      items: imagenesLista
                          .map(
                            (item) => Center(
                              child: Image.asset(
                                item,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        //TODO BOTON PARA LLAMAR
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 4, color: Colors.white)),
                              child: SizedBox.fromSize(
                                size: Size(70, 70), // button width and height
                                child: ClipOval(
                                  child: Material(
                                    color: Colors.black, // button color
                                    child: InkWell(
                                      splashColor: Colors.white, // splash color
                                      onTap: () async {
                                        const url =
                                            "https://maps.google.com/maps?Tu+ubicaci%C3%B3n&daddr=-24.9798932,-65.6196084=cars";
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw "Could not launch $url";
                                        }
                                      }, // button pressed
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            Icons.add_location_alt,
                                            color: Colors.white,
                                            size: 45,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "UBICACIÓN",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: "fuentea"),
                            ),
                          ],
                        ),

                        //TODO BOTON DE GUIA TURISTICA

                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 4, color: Colors.white)),
                              child: SizedBox(
                                height: 80,
                                width: 80,
                                child: RaisedButton(
                                  child: Image.asset(
                                    'assets/icon/guia.png',
                                    color: Colors.white,
                                  ),
                                  shape: StadiumBorder(),
                                  color: Colors.black,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Rosariodelerma()));
                                  },
                                ),
                              ),
                            ),
                            Text(
                              "GUÍA TURÍSTICA",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: "fuentea"),
                            ),
                          ],
                        ),

                        //TODO BOTON DE COMPARTIR
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 4, color: Colors.white)),
                              child: SizedBox.fromSize(
                                size: Size(70, 70), // button width and height
                                child: ClipOval(
                                  child: Material(
                                    color: Colors.black, // button color
                                    child: InkWell(
                                      splashColor: Colors.white, // splash color
                                      onTap: () {
                                        Share.share(
                                            "Hola soy la guía oficial de turismo de la ciudad de Rosario de Lerma! https://play.google.com/store/apps/details?id=com.lucianogutierrez.turismorosariodelerma");
                                      }, // button pressed
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            Icons.share,
                                            color: Colors.white,
                                            size: 40,
                                          ), // icon
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "COMPARTIR",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: "fuentea"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
