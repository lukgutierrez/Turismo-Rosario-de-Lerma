import 'package:flutter/material.dart';
import 'package:turismorosariodelerma/src/pages/categorias/restaurantes/restaurantes.dart';

//RESTAURANTES

class Restaurantes extends StatefulWidget {
  @override
  _RestaurantesState createState() => _RestaurantesState();
}

class _RestaurantesState extends State<Restaurantes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView.builder(
            itemCount: 1,
            itemBuilder: (_, index) {
              return Container(
                  child: Column(children: <Widget>[
                Divider(
                  color: Colors.transparent,
                ),

                //DOÑA PAULA

                Stack(
                  children: [
                    GestureDetector(
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
                              offset:
                                  Offset(0, 5), // changes position of shadow
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: new BorderRadius.circular(20.0),
                          child: FadeInImage(
                            placeholder: AssetImage("assets/icon/loading.gif"),
                            image: NetworkImage(
                              'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632100519/ROSARIO%20DE%20LERMA/RESTAURANTES/DO%C3%91A%20PAULA/195665216_102157105453464_2383426614444622147_n_vsz7s8.jpg',
                            ),
                            fit: BoxFit.fill,
                            height: 200,
                            width: 300,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DonaPaula()));
                      },
                    ),
                    Positioned(
                      top: 90,
                      left: 90,
                      child: Text(
                        "DOÑA PAULA",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(3.0, 3.0),
                              blurRadius: 3.0,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            Shadow(
                                offset: Offset(10.0, 10.0),
                                blurRadius: 10.0,
                                color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.transparent,
                ),

                //EL ENCUENTRO

                Stack(
                  children: [
                    GestureDetector(
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
                              offset:
                                  Offset(0, 5), // changes position of shadow
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: new BorderRadius.circular(20.0),
                          child: FadeInImage(
                            placeholder: AssetImage("assets/icon/loading.gif"),
                            image: NetworkImage(
                              'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632100583/ROSARIO%20DE%20LERMA/RESTAURANTES/EL%20ENCUENTRO/84260042_2444932165758478_4716583417741836288_n_uhfda5.jpg',
                            ),
                            fit: BoxFit.fill,
                            height: 200,
                            width: 300,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RiconEncuentro()));
                      },
                    ),
                    Positioned(
                      top: 90,
                      left: 80,
                      child: Text("EL ENCUENTRO",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(3.0, 3.0),
                                blurRadius: 3.0,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              Shadow(
                                  offset: Offset(10.0, 10.0),
                                  blurRadius: 10.0,
                                  color: Colors.black),
                            ],
                          )),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.transparent,
                ),

                //EL LEGADO

                Stack(
                  children: [
                    GestureDetector(
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
                              offset:
                                  Offset(0, 5), // changes position of shadow
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: new BorderRadius.circular(20.0),
                          child: FadeInImage(
                            placeholder: AssetImage("assets/icon/loading.gif"),
                            image: NetworkImage(
                              'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632103578/ROSARIO%20DE%20LERMA/RESTAURANTES/EL%20LEGADO/29873305_369803923504670_3372936356862929529_o_ppljkl.jpg',
                            ),
                            fit: BoxFit.fill,
                            height: 200,
                            width: 300,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ElLegado()));
                      },
                    ),
                    Positioned(
                      top: 90,
                      left: 90,
                      child: Text("EL LEGADO",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(3.0, 3.0),
                                blurRadius: 3.0,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              Shadow(
                                  offset: Offset(10.0, 10.0),
                                  blurRadius: 10.0,
                                  color: Colors.black),
                            ],
                          )),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.transparent,
                ),
              ]));
            }));
  }
}

//RESTO BAR

class RestoBar extends StatefulWidget {
  @override
  _RestoBarState createState() => _RestoBarState();
}

class _RestoBarState extends State<RestoBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView.builder(
            itemCount: 1,
            itemBuilder: (_, index) {
              return Container(
                  child: Column(children: <Widget>[
                Divider(
                  color: Colors.transparent,
                ),

                //ENTRE AMIGOS

                Stack(
                  children: [
                    GestureDetector(
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
                              offset:
                                  Offset(0, 5), // changes position of shadow
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: new BorderRadius.circular(20.0),
                          child: FadeInImage(
                            placeholder: AssetImage("assets/icon/loading.gif"),
                            image: NetworkImage(
                              'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632101329/ROSARIO%20DE%20LERMA/RESTAURANTES/ENTRE%20AMIGOS/122315226_372363174196970_6040547310335649838_n_h2lj0c.jpg',
                            ),
                            fit: BoxFit.fill,
                            height: 200,
                            width: 300,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EntreAmigos()));
                      },
                    ),
                    Positioned(
                      top: 90,
                      left: 80,
                      child: Text("ENTRE AMIGOS",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(3.0, 3.0),
                                blurRadius: 3.0,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              Shadow(
                                  offset: Offset(10.0, 10.0),
                                  blurRadius: 10.0,
                                  color: Colors.black),
                            ],
                          )),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.transparent,
                ),

                //LA 125 PANCHERIA Y TAQUERIA
                
                Stack(
                  children: [
                    GestureDetector(
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
                              offset:
                                  Offset(0, 5), // changes position of shadow
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: new BorderRadius.circular(20.0),
                          child: FadeInImage(
                            placeholder: AssetImage("assets/icon/loading.gif"),
                            image: NetworkImage(
                              'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632511382/ROSARIO%20DE%20LERMA/RESTAURANTES/LA%20125%20PANCHERIA%20Y%20TAQUERIA/122552934_144334547397208_8567755725886957150_n_soqzal.jpg',
                            ),
                            fit: BoxFit.fill,
                            height: 200,
                            width: 300,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => La125()));
                      },
                    ),
                    Positioned(
                      top: 90,
                      left: 110,
                      child: Text("LA 125",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(3.0, 3.0),
                                blurRadius: 3.0,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              Shadow(
                                  offset: Offset(10.0, 10.0),
                                  blurRadius: 10.0,
                                  color: Colors.black),
                            ],
                          )),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.transparent,
                ),
              ]));
            }));
  }
}
