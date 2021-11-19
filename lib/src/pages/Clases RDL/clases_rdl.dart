import 'package:flutter/material.dart';
import 'package:turismorosariodelerma/src/botomabajo/farmacia_doctor.dart';
import 'package:turismorosariodelerma/src/botomabajo/telefonos_import.dart';
import 'package:turismorosariodelerma/src/pages/categoria_rdl.dart';
import 'package:turismorosariodelerma/src/pages/categorias/hoteles/hotelesrdl.dart';

void main() => runApp(Hotelrdl());

//HOTELES

class Hotelrdl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Container(
            child: Center(child: Text("HOSPEDAJES")),
          )),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (_, index) {
            return Container(
                child: Column(children: <Widget>[
              //HOTEL VALLE ESCONDIDO
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
                            offset: Offset(0, 5), // changes position of shadow
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(20.0),
                        child: FadeInImage(
                          placeholder: AssetImage("assets/icon/loading.gif"),
                          image: NetworkImage(
                            'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632097096/ROSARIO%20DE%20LERMA/HOTELES/HOTEL%20VALLE%20ESCONDIDO/13613452_578123202367926_8902565269820956744_o_h4xo32.jpg',
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
                              builder: (context) => HotelValle()));
                    },
                  ),
                  Positioned(
                    top: 90,
                    left: 35,
                    child: Text(
                      "HOTEL VALLE ESCONDIDO",
                      style: TextStyle(
                        fontSize: 19.0,
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
              //HOTEL TERCIOPELO
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
                            offset: Offset(0, 5), // changes position of shadow
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(20.0),
                        child: FadeInImage(
                          placeholder: AssetImage("assets/icon/loading.gif"),
                          image: NetworkImage(
                            'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632097795/ROSARIO%20DE%20LERMA/HOTELES/HOTEL%20TERCIOPELO/600158_348117268626672_308976673_n_uxqrn3.jpg',
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
                              builder: (context) => HotelTerciopelo()));
                    },
                  ),
                  Positioned(
                    top: 90,
                    left: 40,
                    child: Text("CERROS DE TERCIOPELO",
                        style: TextStyle(
                          fontSize: 19.0,
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
            ]));
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
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Rosariodelerma()));
                },
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
                      MaterialPageRoute(builder: (context) => FarmaciaDoctor()),
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
    );
  }
}




  