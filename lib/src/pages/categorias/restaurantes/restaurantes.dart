import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(EntreAmigos());

class EntreAmigos extends StatefulWidget {
  @override
  _HotelValleState createState() => _HotelValleState();
}

class _HotelValleState extends State<EntreAmigos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ENTRE AMIGOS"),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (_, index) {
          return Container(
            child: Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                      height: 220, initialPage: 1, autoPlay: true),
                  items: [
                    //IMAGEN NUMERO 1
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632102351/ROSARIO%20DE%20LERMA/RESTAURANTES/ENTRE%20AMIGOS/150934886_457006395732647_30515058543453379_n_nydn9o.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 2
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632101311/ROSARIO%20DE%20LERMA/RESTAURANTES/ENTRE%20AMIGOS/118256285_327058335394121_3577790560569141126_n_pggt1q.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 3
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632104775/ROSARIO%20DE%20LERMA/RESTAURANTES/ENTRE%20AMIGOS/151290247_457006522399301_3616649790844389974_n_fo0fya.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 4

                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632104663/ROSARIO%20DE%20LERMA/RESTAURANTES/ENTRE%20AMIGOS/122358603_372358780864076_7233139544322252729_n_wv2of5.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632104047/ROSARIO%20DE%20LERMA/RESTAURANTES/ENTRE%20AMIGOS/151474626_457006492399304_3264408913853621090_n_r8mlel.jpg',
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
                //DESCRIPCION

                //UBICACION

                ListTile(
                  leading: ImageIcon(
                    AssetImage("assets/icon/maps.png"),
                    color: Colors.black,
                    size: 80,
                  ),
                  title: Text("UBICACIÓN"),
                  subtitle: Text("Rosario de Lerma,Salta"),
                  trailing: Icon(
                    Icons.assistant_direction_outlined,
                    color: Colors.black,
                  ),
                  onTap: () async {
                    const url =
                        "https://maps.google.com/maps?Tu+ubicaci%C3%B3n&daddr=Entre+Amigos=cars";
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
                    AssetImage("assets/icon/delibery.png"),
                    color: Colors.black,
                    size: 80,
                  ),
                  subtitle: Text("Apartir de las 20 Hs - 01 Hs"),
                  trailing: Icon(
                    Icons.assistant_direction_outlined,
                    color: Colors.black,
                  ),
                  title: Text("DELIBERY"),
                  onTap: () async {
                    const url =
                        "https://api.whatsapp.com/send?phone=543874791751";
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw "Could not launch $url";
                    }
                  },
                ),
                Divider(),
                ListTile(
                  leading: ImageIcon(
                    AssetImage("assets/icon/menu.png"),
                    color: Colors.black,
                    size: 80,
                  ),
                  subtitle: Text("Carta Menu"),
                  trailing: Icon(
                    Icons.assistant_direction_outlined,
                    color: Colors.black,
                  ),
                  title: Text("MENU"),
                  onTap: () async {
                    const url =
                        "https://sites.google.com/view/menuentreamigos/inicio";
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
                  subtitle: Text("Lunes a Domingo desde 20Hs - 00Hs"),
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
                    'https://www.facebook.com/profile.php?id=100063715144940'),
                icon: ImageIcon(
                  AssetImage("assets/icon/facebook.png"),
                  color: Colors.white,
                  size: 80,
                )),
            label: 'Facebook',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () =>
                    launch("https://api.whatsapp.com/send?phone=543874791751"),
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
                    launch('https://www.instagram.com/entreamigos125/'),
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

//DOÑA PAULA
class DonaPaula extends StatefulWidget {
  @override
  _DonaPaulaState createState() => _DonaPaulaState();
}

class _DonaPaulaState extends State<DonaPaula> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PARRILLADA DOÑA PAULA"),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (_, index) {
          return Container(
            child: Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                      height: 220.0, initialPage: 1, autoPlay: true),
                  items: [
                    //IMAGEN NUMERO 1
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632100393/ROSARIO%20DE%20LERMA/RESTAURANTES/DO%C3%91A%20PAULA/237813873_985639548935958_2549426515505409989_n_mqeyfp.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 2
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632100530/ROSARIO%20DE%20LERMA/RESTAURANTES/DO%C3%91A%20PAULA/237566751_985639998935913_8967731806161186536_n_yilkdx.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 3
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632100367/ROSARIO%20DE%20LERMA/RESTAURANTES/DO%C3%91A%20PAULA/220642272_985639868935926_420149060506337570_n_irrqzi.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 4

                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632100369/ROSARIO%20DE%20LERMA/RESTAURANTES/DO%C3%91A%20PAULA/238477429_985639915602588_8697317847595786656_n_hzvygr.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632100530/ROSARIO%20DE%20LERMA/RESTAURANTES/DO%C3%91A%20PAULA/237566751_985639998935913_8967731806161186536_n_yilkdx.jpg',
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
                //DESCRIPCION
                ListTile(
                  title: Text("DESCRIPCIÓN"),
                  subtitle: Text(
                      "Parrillada Doña Paula te ofrece,un hambiente calido,confortable,familiar.En donde podras difrutar todos nuestro platillos.Tenemos WIFI-AIRE ACONDICIONADO-TV .",
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black45)),
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
                        "https://maps.google.com/maps?Tu+ubicaci%C3%B3n&daddr=RESTAURANTE+-+PARRILLA+DOÑA+PAULA=cars";
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
                    AssetImage("assets/icon/delibery.png"),
                    color: Colors.black,
                    size: 80,
                  ),
                  subtitle: Text("Apartir de las 20 Hs - 00 Hs"),
                  trailing: Icon(
                    Icons.assistant_direction_outlined,
                    color: Colors.black,
                  ),
                  title: Text("DELIBERY"),
                  onTap: () async {
                    const url =
                        "https://api.whatsapp.com/send?phone=543874686604&app=facebook&entry_point=page_cta";
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw "Could not launch $url";
                    }
                  },
                ),
                Divider(),
                ListTile(
                  leading: ImageIcon(
                    AssetImage("assets/icon/menu.png"),
                    color: Colors.black,
                    size: 80,
                  ),
                  subtitle: Text("Carta Menu"),
                  trailing: Icon(
                    Icons.assistant_direction_outlined,
                    color: Colors.black,
                  ),
                  title: Text("MENU"),
                  onTap: () async {
                    const url =
                        "https://drive.google.com/file/d/1o4QRvKmMMdtWSPIOj1kbzzYNlSl4RQLy/view";
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
                  subtitle: Text("Lunes a Domingo desde 20Hs - 00Hs"),
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
                    'https://www.facebook.com/Restaurant-DO%C3%91A-PAULA-102156545453520'),
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
                    'https://api.whatsapp.com/send?phone=543874686604&app=facebook&entry_point=page_cta'),
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

//EL ENCUENTRO
class RiconEncuentro extends StatefulWidget {
  @override
  _RiconEncuentroState createState() => _RiconEncuentroState();
}

class _RiconEncuentroState extends State<RiconEncuentro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RICÓN DEL ENCUENTRO"),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (_, index) {
          return Container(
            child: Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                      height: 220.0, initialPage: 1, autoPlay: true),
                  items: [
                    //IMAGEN NUMERO 1
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632100560/ROSARIO%20DE%20LERMA/RESTAURANTES/EL%20ENCUENTRO/84332809_2455332781385083_6000041201951047680_n_d0cqri.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 2
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632100554/ROSARIO%20DE%20LERMA/RESTAURANTES/EL%20ENCUENTRO/86969509_2455332708051757_2571581260111544320_n_dq8bjs.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 3
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632100564/ROSARIO%20DE%20LERMA/RESTAURANTES/EL%20ENCUENTRO/50060799_2161032344148463_4400808187960229888_n_uzkkf1.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 4

                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632100556/ROSARIO%20DE%20LERMA/RESTAURANTES/EL%20ENCUENTRO/149223721_2748848348700190_8075768117301811169_n_hiccsj.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632100560/ROSARIO%20DE%20LERMA/RESTAURANTES/EL%20ENCUENTRO/49900144_2161032467481784_3571907430004555776_n_h1nyfi.jpg',
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

                //UBICACION

                ListTile(
                  leading: ImageIcon(
                    AssetImage("assets/icon/maps.png"),
                    color: Colors.black,
                    size: 80,
                  ),
                  title: Text("UBICACIÓN"),
                  subtitle: Text("Catamarca N° 210,Rosario de Lerma"),
                  trailing: Icon(
                    Icons.assistant_direction_outlined,
                    color: Colors.black,
                  ),
                  onTap: () async {
                    const url =
                        "https://maps.google.com/maps?Tu+ubicaci%C3%B3n&daddr=Rincon+Del+Encuentro=cars";
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
                    AssetImage("assets/icon/delibery.png"),
                    color: Colors.black,
                    size: 80,
                  ),
                  subtitle: Text("4937700"),
                  trailing: Icon(
                    Icons.assistant_direction_outlined,
                    color: Colors.black,
                  ),
                  title: Text("DELIBERY"),
                  onTap: () {
                    launch('tel://4937700');
                  },
                ),
                Divider(),
                ListTile(
                  leading: ImageIcon(
                    AssetImage("assets/icon/menu.png"),
                    color: Colors.black,
                    size: 80,
                  ),
                  subtitle: Text("No Disponible"),
                  trailing: Icon(
                    Icons.assistant_direction_outlined,
                    color: Colors.black,
                  ),
                  title: Text("MENU"),
                  onTap: () async {
                    const url = "";
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
                  subtitle: Text(
                      "HORARIO DE ATENCIÓN : Apartir de las 11:30 Hs - 15 Hs ,21 Hs - 00 hs."),
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
                    launch('https://www.facebook.com/rincon.delencuentro'),
                icon: ImageIcon(
                  AssetImage("assets/icon/facebook.png"),
                  color: Colors.white,
                  size: 80,
                )),
            label: 'Facebook',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () => launch('tel://4937700'),
                icon: ImageIcon(
                  AssetImage("assets/icon/hlep.png"),
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

//EL LEGADO
class ElLegado extends StatefulWidget {
  @override
  _ElLegadoState createState() => _ElLegadoState();
}

class _ElLegadoState extends State<ElLegado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("EL LEGADO"),
          backgroundColor: Colors.black,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (_, index) {
            return Container(
              child: Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                        height: 220.0, initialPage: 1, autoPlay: true),
                    items: [
                      //IMAGEN NUMERO 1
                      FadeInImage(
                        placeholder: AssetImage("assets/icon/loading.gif"),
                        image: NetworkImage(
                          'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632147120/ROSARIO%20DE%20LERMA/RESTAURANTES/EL%20LEGADO/29983734_369808103504252_3430475232704523930_o_flhwrs.jpg',
                        ),
                        fit: BoxFit.fill,
                        height: double.infinity,
                        width: double.infinity,
                      ),

                      //IMAGEN NUMERO 2
                      FadeInImage(
                        placeholder: AssetImage("assets/icon/loading.gif"),
                        image: NetworkImage(
                          'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632147063/ROSARIO%20DE%20LERMA/RESTAURANTES/EL%20LEGADO/30072941_369818496836546_9144423383897196282_o_u52l9t.jpg',
                        ),
                        fit: BoxFit.fill,
                        height: double.infinity,
                        width: double.infinity,
                      ),

                      //IMAGEN NUMERO 3
                      FadeInImage(
                        placeholder: AssetImage("assets/icon/loading.gif"),
                        image: NetworkImage(
                          'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632147050/ROSARIO%20DE%20LERMA/RESTAURANTES/EL%20LEGADO/30167943_369812213503841_2426247555850011328_o_jpyt5u.jpg',
                        ),
                        fit: BoxFit.fill,
                        height: double.infinity,
                        width: double.infinity,
                      ),

                      //IMAGEN NUMERO 4

                      FadeInImage(
                        placeholder: AssetImage("assets/icon/loading.gif"),
                        image: NetworkImage(
                          'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632147046/ROSARIO%20DE%20LERMA/RESTAURANTES/EL%20LEGADO/29872894_369818926836503_1511367331363603802_o_xkkvd5.jpg',
                        ),
                        fit: BoxFit.fill,
                        height: double.infinity,
                        width: double.infinity,
                      ),

                      FadeInImage(
                        placeholder: AssetImage("assets/icon/loading.gif"),
                        image: NetworkImage(
                          'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632147045/ROSARIO%20DE%20LERMA/RESTAURANTES/EL%20LEGADO/131370448_1015489308936125_6011191526256124760_n_zccrwn.jpg',
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
                  //DESCRIPCION

                  //UBICACION

                  ListTile(
                    leading: ImageIcon(
                      AssetImage("assets/icon/maps.png"),
                      color: Colors.black,
                      size: 80,
                    ),
                    title: Text("UBICACIÓN"),
                    subtitle: Text("General Lonardi N°167-Rosario de Lerma"),
                    trailing: Icon(
                      Icons.assistant_direction_outlined,
                      color: Colors.black,
                    ),
                    onTap: () async {
                      const url =
                          "https://maps.google.com/maps?Tu+ubicaci%C3%B3n&daddr=Restaurante+EL+LEGADO=cars";
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
                      AssetImage("assets/icon/delibery.png"),
                      color: Colors.black,
                      size: 80,
                    ),
                    subtitle: Text("4931393"),
                    trailing: Icon(
                      Icons.assistant_direction_outlined,
                      color: Colors.black,
                    ),
                    title: Text("DELIBERY"),
                    onTap: () {
                      launch('tel://4931393');
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: ImageIcon(
                      AssetImage("assets/icon/menu.png"),
                      color: Colors.black,
                      size: 80,
                    ),
                    subtitle: Text("No Disponible"),
                    trailing: Icon(
                      Icons.assistant_direction_outlined,
                      color: Colors.black,
                    ),
                    title: Text("MENU"),
                    onTap: () async {
                      const url = "";
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
                    subtitle: Text(
                      "HORARIO DE ATENCIÓN : Martes a Domingo 1/2 día. Viernes y Sábado por la noche.",
                      textAlign: TextAlign.justify,
                    ),
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
                      'https://www.facebook.com/El-Legado-369803123504750/?ref=page_internal'),
                  icon: ImageIcon(
                    AssetImage("assets/icon/facebook.png"),
                    color: Colors.white,
                    size: 80,
                  )),
              label: 'Facebook',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () => launch('tel://4931393'),
                  icon: ImageIcon(
                    AssetImage("assets/icon/hlep.png"),
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
        ));
  }
}

//LA 125 PANCHERIA Y TAQUERIA

class La125 extends StatefulWidget {
  @override
  _La125State createState() => _La125State();
}

class _La125State extends State<La125> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("LA 125"),
          backgroundColor: Colors.black,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (_, index) {
            return Container(
              child: Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                        height: 220.0, initialPage: 1, autoPlay: true),
                    items: [
                      //IMAGEN NUMERO 1
                      FadeInImage(
                        placeholder: AssetImage("assets/icon/loading.gif"),
                        image: NetworkImage(
                          'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632591795/ROSARIO%20DE%20LERMA/RESTAURANTES/LA%20125%20PANCHERIA%20Y%20TAQUERIA/213897946_322532056244122_7047658452537616608_n_cbwahv.jpg',
                        ),
                        fit: BoxFit.fill,
                        height: double.infinity,
                        width: double.infinity,
                      ),

                      //IMAGEN NUMERO 2
                      FadeInImage(
                        placeholder: AssetImage("assets/icon/loading.gif"),
                        image: NetworkImage(
                          'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632591780/ROSARIO%20DE%20LERMA/RESTAURANTES/LA%20125%20PANCHERIA%20Y%20TAQUERIA/122552934_144334547397208_8567755725886957150_n_atudyt.jpg',
                        ),
                        fit: BoxFit.fill,
                        height: double.infinity,
                        width: double.infinity,
                      ),

                      //IMAGEN NUMERO 3
                      FadeInImage(
                        placeholder: AssetImage("assets/icon/loading.gif"),
                        image: NetworkImage(
                          'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632591798/ROSARIO%20DE%20LERMA/RESTAURANTES/LA%20125%20PANCHERIA%20Y%20TAQUERIA/163804607_238477647982897_1444478440402498814_n_sb5rdd.jpg',
                        ),
                        fit: BoxFit.fill,
                        height: double.infinity,
                        width: double.infinity,
                      ),

                      //IMAGEN NUMERO 4

                      FadeInImage(
                        placeholder: AssetImage("assets/icon/loading.gif"),
                        image: NetworkImage(
                          'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632593106/ROSARIO%20DE%20LERMA/RESTAURANTES/LA%20125%20PANCHERIA%20Y%20TAQUERIA/163895708_238468614650467_5643826350878479909_n_ip91y4.jpg',
                        ),
                        fit: BoxFit.fill,
                        height: double.infinity,
                        width: double.infinity,
                      ),

                      FadeInImage(
                        placeholder: AssetImage("assets/icon/loading.gif"),
                        image: NetworkImage(
                          'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632593126/ROSARIO%20DE%20LERMA/RESTAURANTES/LA%20125%20PANCHERIA%20Y%20TAQUERIA/163233025_238468631317132_699460915801845187_n_nfyopu.jpg',
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
                  //DESCRIPCION

                  //UBICACION

                  ListTile(
                    leading: ImageIcon(
                      AssetImage("assets/icon/maps.png"),
                      color: Colors.black,
                      size: 80,
                    ),
                    title: Text("UBICACIÓN"),
                    subtitle: Text("Rosario de Lerma - Salta"),
                    trailing: Icon(
                      Icons.assistant_direction_outlined,
                      color: Colors.black,
                    ),
                    onTap: () async {
                      const url =
                          "https://maps.google.com/maps?Tu+ubicaci%C3%B3n&daddr=La+125+Taqueria+y+Pancheria=cars";
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
                      AssetImage("assets/icon/delibery.png"),
                      color: Colors.black,
                      size: 80,
                    ),
                    subtitle: Text("3876842643"),
                    trailing: Icon(
                      Icons.assistant_direction_outlined,
                      color: Colors.black,
                    ),
                    title: Text("DELIBERY"),
                    onTap: () {
                      launch('tel://3876842643');
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: ImageIcon(
                      AssetImage("assets/icon/menu.png"),
                      color: Colors.black,
                      size: 80,
                    ),
                    subtitle: Text("No Disponible"),
                    trailing: Icon(
                      Icons.assistant_direction_outlined,
                      color: Colors.black,
                    ),
                    title: Text("MENU"),
                    onTap: () {},
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
                    subtitle: Text(
                      "HORARIO DE ATENCIÓN : 20:00 Hs - 01:00 Hs",
                      textAlign: TextAlign.justify,
                    ),
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
                      launch('https://www.facebook.com/pancheria.taqueria.5'),
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
                      'https://api.whatsapp.com/send?phone=543876842643'),
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
                      launch('https://www.instagram.com/la125.ok/'),
                  icon: ImageIcon(
                    AssetImage("assets/icon/instagram.png"),
                    color: Colors.white,
                    size: 80,
                  )),
              label: 'Instagram',
            ),
          ],
        ));
  }
}
