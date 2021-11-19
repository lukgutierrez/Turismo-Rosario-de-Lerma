import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(HotelValle());

class HotelValle extends StatefulWidget {
  @override
  _HotelValleState createState() => _HotelValleState();
}

class _HotelValleState extends State<HotelValle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOTEL VALLE ESCONDIDO"),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (_, index) {
          return Container(
            child: Column(
              children: [
                CarouselSlider(

                  options: CarouselOptions(height: 220, initialPage: 1,autoPlay: true),
                  items: [
                    //IMAGEN NUMERO 1
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632097079/ROSARIO%20DE%20LERMA/HOTELES/HOTEL%20VALLE%20ESCONDIDO/198089819_1813967528783481_1529305905518847853_n_omttgv.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 2
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632097089/ROSARIO%20DE%20LERMA/HOTELES/HOTEL%20VALLE%20ESCONDIDO/80195723_1349098878603684_5765069468241756160_n_bxyoej.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 3
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632097085/ROSARIO%20DE%20LERMA/HOTELES/HOTEL%20VALLE%20ESCONDIDO/197747717_1813971058783128_2943953702807455218_n_bdd5fx.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 4
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632097096/ROSARIO%20DE%20LERMA/HOTELES/HOTEL%20VALLE%20ESCONDIDO/13613452_578123202367926_8902565269820956744_o_h4xo32.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                  ],
                ),
                Divider(
                  color: Colors.transparent,
                ),
                ListTile(
                  title: Text("DESCRIPCIÓN"),
                  subtitle: Text(
                    "Hotel Valle Escondido,Te ofrece habitaciones:\n*Single.\n*Matrimonial.\n*Triple.\n*Cuadruple.\nCada Habitación cuenta con: Baño Privado,Aire Acondicionado,TV,WI-FI.Contamos con nuestro propio restaurante DOÑA PAULA.",
                    textAlign: TextAlign.justify,
                  ),
                ),
                Divider(
                  color: Colors.transparent,
                ),
                //UBICACION

                ListTile(
                  leading: ImageIcon(
                    AssetImage("assets/icon/maps.png"),
                    color: Colors.black,
                    size: 80,
                  ),
                  title: Text("UBICACIÓN"),
                  subtitle: Text("Dr.Luis Guemes 570"),
                  trailing: Icon(
                    Icons.assistant_direction_outlined,
                    color: Colors.black,
                  ),
                  onTap: () async {
                    const url =
                        "https://maps.google.com/maps?Tu+ubicaci%C3%B3n&daddr=HOTEL+VALLE+ESCONDIDO=cars";
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw "Could not launch $url";
                    }
                  },
                ),
                Divider(),

                //TELEFONO

                ListTile(
                  leading: ImageIcon(
                    AssetImage("assets/icon/hlep.png"),
                    color: Colors.black,
                    size: 80,
                  ),
                  subtitle: Text("+543874686604"),
                  trailing: Icon(
                    Icons.assistant_direction_outlined,
                    color: Colors.black,
                  ),
                  title: Text("RESERVAS"),
                  onTap: () {
                    launch('tel://+543874686604');
                  },
                ),
                Divider(),

                // PAGINA WEB

                ListTile(
                  leading: ImageIcon(
                    AssetImage("assets/icon/google.png"),
                    color: Colors.black,
                    size: 80,
                  ),
                  subtitle: Text(
                    "www.hotelenrosariodelerma.com",
                    textScaleFactor: 0.9,
                  ),
                  trailing: Icon(
                    Icons.assistant_direction_outlined,
                    color: Colors.black,
                  ),
                  title: Text("PAGINA WEB"),
                  onTap: () async {
                    const url = "https://www.hotelenrosariodelerma.com/";
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw "Could not launch $url";
                    }
                  },
                ),
                Divider(),

                //DIAS Y HORARIOS

                ListTile(
                  leading: Icon(
                    Icons.access_alarm,
                    color: Colors.black,
                    size: 40,
                  ),
                  title: Text("DIAS Y HORARIOS"),
                  subtitle: Text("Todos los dias,Desde 08hs-00hs"),
                ),
                Divider(),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: new BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () =>
                    launch('https://www.facebook.com/ValleEscondido2185'),
                icon: ImageIcon(
                  AssetImage("assets/icon/facebook.png"),
                  color: Colors.white,
                  size: 80,
                )),
            label: 'Facebook',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () => launch('https://api.whatsapp.com/send?phone=543874686604'),
                icon: ImageIcon(
                  AssetImage("assets/icon/whatsapp.png"),
                  color: Colors.white,
                  size: 80,
                )),
            label: 'Whatsapp',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () => launch(''),
                icon: ImageIcon(
                  AssetImage("assets/icon/instagram.png"),
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

class HotelTerciopelo extends StatefulWidget {
  @override
  _HotelTerciopeloState createState() => _HotelTerciopeloState();
}

class _HotelTerciopeloState extends State<HotelTerciopelo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CERROS DE TERCIOPELO"),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (_, index) {
          return Container(
            child: Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(height: 220, initialPage: 1,autoPlay: true),
                  items: [
                    //IMAGEN NUMERO 1
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632097862/ROSARIO%20DE%20LERMA/HOTELES/HOTEL%20TERCIOPELO/819282_335351679903231_528513725_o_yb3onc.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 2
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632097848/ROSARIO%20DE%20LERMA/HOTELES/HOTEL%20TERCIOPELO/843799_340423059396093_152171103_o_xzwa42.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 3
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632097827/ROSARIO%20DE%20LERMA/HOTELES/HOTEL%20TERCIOPELO/487633_348118145293251_622305234_n_joyecl.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 4
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632097802/ROSARIO%20DE%20LERMA/HOTELES/HOTEL%20TERCIOPELO/542670_348125775292488_963295394_n_yit2uk.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                  ],
                ),

                //UBICACION

                ListTile(
                  leading: ImageIcon(
                    AssetImage("assets/icon/maps.png"),
                    color: Colors.black,
                    size: 80,
                  ),
                  title: Text("UBICACIÓN"),
                  subtitle: Text("Ruta 23,Rosario de Lerma"),
                  trailing: Icon(
                    Icons.assistant_direction_outlined,
                    color: Colors.black,
                  ),
                  onTap: () async {
                    const url =
                        "https://maps.google.com/maps?Tu+ubicaci%C3%B3n&daddr=Hotel+en+Salta+Cerros+de+Terciopelo=cars";
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw "Could not launch $url";
                    }
                  },
                ),
                Divider(),

                //TELEFONO

                ListTile(
                  leading: ImageIcon(
                    AssetImage("assets/icon/hlep.png"),
                    color: Colors.black,
                    size: 80,
                  ),
                  subtitle: Text("+541160355956"),
                  trailing: Icon(
                    Icons.assistant_direction_outlined,
                    color: Colors.black,
                  ),
                  title: Text("RESERVAS"),
                  onTap: () {
                    launch('tel://+541160355956');
                  },
                ),
                Divider(),

                // PAGINA WEB

                ListTile(
                  leading: ImageIcon(
                    AssetImage("assets/icon/google.png"),
                    color: Colors.black,
                    size: 80,
                  ),
                  subtitle: Text(
                    "http://www.cerrosdeterciopelo.com.ar/",
                    textScaleFactor: 0.9,
                  ),
                  trailing: Icon(
                    Icons.assistant_direction_outlined,
                    color: Colors.black,
                  ),
                  title: Text("PAGINA WEB"),
                  onTap: () async {
                    const url = "http://www.cerrosdeterciopelo.com.ar/";
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw "Could not launch $url";
                    }
                  },
                ),
                Divider(),

                //DIAS Y HORARIOS

                ListTile(
                  leading: Icon(
                    Icons.access_alarm,
                    color: Colors.black,
                    size: 40,
                  ),
                  title: Text("DIAS Y HORARIOS"),
                  subtitle: Text(""),
                ),
                Divider(),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: new BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () => launch(
                    'https://www.facebook.com/Cerros-de-Terciopelo-334517869986612/?ref=page_internal'),
                icon: ImageIcon(
                  AssetImage("assets/icon/facebook.png"),
                  color: Colors.white,
                  size: 80,
                )),
            label: 'Facebook',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () => launch(
                    'https://api.whatsapp.com/send?phone=541160355956&app=facebook&entry_point=page_cta'),
                icon: ImageIcon(
                  AssetImage("assets/icon/whatsapp.png"),
                  color: Colors.white,
                  size: 80,
                )),
            label: 'Whatsapp',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () =>
                    launch('https://www.instagram.com/cerrosdeterciopelo'),
                icon: ImageIcon(
                  AssetImage("assets/icon/instagram.png"),
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
