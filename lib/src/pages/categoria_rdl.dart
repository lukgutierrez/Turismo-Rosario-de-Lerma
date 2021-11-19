import 'package:flutter/material.dart';
import 'package:turismorosariodelerma/src/Restaurantes-Visitar/Restaurantes/Restaurantes_Tabs.dart';
import 'package:turismorosariodelerma/src/Restaurantes-Visitar/Visitar/Visitar_Tabs.dart';
import 'package:turismorosariodelerma/src/botomabajo/farmacia_doctor.dart';
import 'package:turismorosariodelerma/src/botomabajo/telefonos_import.dart';
import 'package:turismorosariodelerma/src/pages/Clases%20RDL/Actividades.dart';
import 'package:turismorosariodelerma/src/pages/Clases%20RDL/Lugares_Visitar.dart';
import 'package:turismorosariodelerma/src/pages/Clases%20RDL/Gastronomicos.dart';
import 'package:turismorosariodelerma/src/pages/Clases%20RDL/clases_rdl.dart';

void main() => runApp(Rosariodelerma());

class Rosariodelerma extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Turismo Rosario de Lerma",
      theme: ThemeData(primaryColor: Colors.black),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Container(
              child: Center(
                  child: Text(
                "CATEGORIAS",
                style: TextStyle(
                    fontSize: 20, color: Colors.white, fontFamily: "fuentea"),
              )),
            )),
        body: ListView.builder(
            itemCount: 1,
            itemBuilder: (_, index) {
              return Container(
                child: Column(
                  children: <Widget>[
                    //HOTELES
                    ListTile(
                      leading: ImageIcon(
                        AssetImage("assets/icon/dormir.png"),
                        color: Colors.black,
                        size: 80,
                      ),
                      title: Text(
                        "HOSPEDAJES",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: "fuentea"),
                      ),
                    ),
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Hotelrdl()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(20.0),
                              child: Image(
                                image: AssetImage(
                                  'assets/icon/hotel.jpg',
                                ),
                                fit: BoxFit.fill,
                                height: 200,
                                width: 330,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 90,
                          left: 100,
                          child: Text("HOSPEDAJES",
                              style: TextStyle(
                                  fontSize: 22.0, color: Colors.white)),
                        ),
                      ],
                    ),
                    ListTile(
                      leading: ImageIcon(
                        AssetImage("assets/icon/restaurante.png"),
                        color: Colors.black,
                        size: 80,
                      ),
                      title: Text(
                        "GASTRONÓMICOS",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: "fuentea"),
                      ),
                    ),

                    //GASTRONÓMICOS
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RestauranteTabs()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(20.0),
                              child: Image(
                                image: AssetImage(
                                  'assets/icon/restaurante.jpg',
                                ),
                                fit: BoxFit.fill,
                                height: 200,
                                width: 330,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 90,
                          left: 80,
                          child: Text("GASTRONÓMICOS",
                              style: TextStyle(
                                  fontSize: 22.0, color: Colors.white)),
                        ),
                      ],
                    ),

                    //ACTIVIDADES
                    ListTile(
                      leading: ImageIcon(
                        AssetImage("assets/icon/conocer.png"),
                        color: Colors.black,
                        size: 80,
                      ),
                      title: Text(
                        "LUGARES POR VISITAR",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: "fuentea"),
                      ),
                    ),
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VisitarTabs()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(20.0),
                              child: Image(
                                image: AssetImage(
                                  'assets/icon/quehacer.jpg',
                                ),
                                fit: BoxFit.fill,
                                height: 200,
                                width: 330,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 90,
                          left: 55,
                          child: Text("LUGARES POR VISITAR",
                              style: TextStyle(
                                  fontSize: 22.0, color: Colors.white)),
                        ),
                      ],
                    ),

                    //LUGARES TURISTICOS
                    ListTile(
                      leading: ImageIcon(
                        AssetImage("assets/icon/actividades.png"),
                        color: Colors.black,
                        size: 80,
                      ),
                      title: Text(
                        "ACTIVIDADES",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: "fuentea"),
                      ),
                    ),
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Actividesrdl()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(20.0),
                              child: Image(
                                image: AssetImage(
                                  'assets/icon/explorar.jpg',
                                ),
                                fit: BoxFit.fill,
                                height: 200,
                                width: 330,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 105,
                          left: 100,
                          child: Text("ACTIVIDADES",
                              style: TextStyle(
                                  fontSize: 22.0, color: Colors.white)),
                        ),
                      ],
                    ),
                    ListTile()
                  ],
                ),
              );
            }),
        bottomNavigationBar: new BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PhonesImport()),
                      ),
                  icon: ImageIcon(
                    AssetImage("assets/icon/hlep.png"),
                    color: Colors.white,
                    size: 100,
                  )),
              label: 'Facebook',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {},
                  icon: ImageIcon(
                    AssetImage("assets/icon/guia.png"),
                    color: Colors.white,
                    size: 80,
                  )),
              label: 'Whatsapp',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FarmaciaDoctor()),
                      ),
                  icon: ImageIcon(
                    AssetImage("assets/icon/farmacia.png"),
                    color: Colors.white,
                    size: 80,
                  )),
              label: 'Instagram',
            ),
          ],
        ),
      ),
    );
  }
}
