import 'package:flutter/material.dart';
import 'package:turismorosariodelerma/src/pages/categorias/lugaresvisita/lugaresvisitar.dart';

//PARQUES

class Parques extends StatefulWidget {
  @override
  _ParquesState createState() => _ParquesState();
}

class _ParquesState extends State<Parques> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView.builder(
            itemCount: 1,
            itemBuilder: (_, index) {
              return Container(
                  child: Column(children: <Widget>[
                //LAS LOMITAS CASA DE CAMPO
                Divider(
                  color: Colors.transparent,
                ),
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
                              "https://res.cloudinary.com/lucianogutierrez/image/upload/v1632148072/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/PARQUE%20DE%20LA%20SALUD/229683378_986205052212741_4496655923037070720_n_thrvey.jpg",
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
                                builder: (context) => ParqueSalud()));
                      },
                    ),
                    Positioned(
                      top: 90,
                      left: 40,
                      child: Text("PARQUE DE LA SALUD",
                          style: TextStyle(
                            fontSize: 22.0,
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

                //PARQUE EVITA
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
                              "https://res.cloudinary.com/lucianogutierrez/image/upload/v1632148205/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/PARQUE%20EVITA/229672123_987240655442514_8142093556524434910_n_1_pm9qg4.jpg",
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
                                builder: (context) => ParqueEvita()));
                      },
                    ),
                    Positioned(
                      top: 90,
                      left: 60,
                      child: Text("PARQUE EVITA",
                          style: TextStyle(
                            fontSize: 22.0,
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
                )
              ]));
            }));
  }
}

//PLAZAS

class Plazas extends StatefulWidget {
  @override
  _PlazasState createState() => _PlazasState();
}

class _PlazasState extends State<Plazas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView.builder(
            itemCount: 1,
            itemBuilder: (_, index) {
              return Container(
                  child: Column(children: <Widget>[
                //PLAZAS
                Divider(
                  color: Colors.transparent,
                ),
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
                              "https://res.cloudinary.com/lucianogutierrez/image/upload/v1632148486/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/PLAZA%20SAN%20RAFAEL/234442542_986205945545985_936483109807389584_n_ahvaus.jpg",
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
                                builder: (context) => PlazaSanRafael()));
                      },
                    ),
                    Positioned(
                      top: 90,
                      left: 40,
                      child: Text("PLAZA SAN RAFAEL",
                          style: TextStyle(
                            fontSize: 22.0,
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
                //CORRALITO
                Divider(
                  color: Colors.transparent,
                ),

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
                              "https://res.cloudinary.com/lucianogutierrez/image/upload/v1632149570/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/PLAZA%20CENTRAL/238360236_987246832108563_8865229968542016623_n_gkniey.jpg",
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
                                builder: (context) => PlazaCentral()));
                      },
                    ),
                    Positioned(
                      top: 90,
                      left: 30,
                      child: Text("PLAZA TORINO DE VIANA",
                          style: TextStyle(
                            fontSize: 22.0,
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
                //PLAZA SAN RAFAEL
                Divider(
                  color: Colors.transparent,
                ),
              ]));
            }));
  }
}

//IGLESIAS

class Iglesias extends StatefulWidget {
  @override
  _IglesiasState createState() => _IglesiasState();
}

class _IglesiasState extends State<Iglesias> {
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
                              "https://res.cloudinary.com/lucianogutierrez/image/upload/v1632149235/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/IGLESIA/239177751_987246515441928_28691285826734434_n_bpwau0.jpg",
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
                                builder: (context) => IglesiaCentral()));
                      },
                    ),
                    Positioned(
                      top: 90,
                      left: 10,
                      child: Text("PARROQUIA S.DEL ROSARIO",
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
                //IGLESIA SANTA RITA
                Divider(
                  color: Colors.transparent,
                ),

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
                              "https://res.cloudinary.com/lucianogutierrez/image/upload/v1632592442/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/SANTA%20RITA/IMG_20210924_183253038_uwedpd.jpg",
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
                                builder: (context) => CapillaCayetano()));
                      },
                    ),
                    Positioned(
                      top: 90,
                      left: 25,
                      child: Text("PARROQUIA SANTA RITA",
                          style: TextStyle(
                            fontSize: 22.0,
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
                //RIO ROSARIO
                Divider(
                  color: Colors.transparent,
                ),
              ]));
            }));
  }
}

//COMPLEJOS

class Complejos extends StatefulWidget {
  @override
  _ComplejosState createState() => _ComplejosState();
}

class _ComplejosState extends State<Complejos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView.builder(
            itemCount: 1,
            itemBuilder: (_, index) {
              return Container(child: Column(children: <Widget>[]));
            }));
  }
}

//RIOS

class Rios extends StatefulWidget {
  @override
  _RiosState createState() => _RiosState();
}

class _RiosState extends State<Rios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView.builder(
            itemCount: 1,
            itemBuilder: (_, index) {
              return Container(child: Column(children: <Widget>[]));
            }));
  }
}
