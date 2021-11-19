import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(ParqueSalud());

class ParqueSalud extends StatefulWidget {
  @override
  _HotelValleState createState() => _HotelValleState();
}

class _HotelValleState extends State<ParqueSalud> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PARQUE DE SALUD"),
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
                    height: 250.0,
                    initialPage: 1,
                    autoPlay: true,
                  ),
                  items: [
                    //IMAGEN NUMERO 1
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632148120/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/PARQUE%20DE%20LA%20SALUD/228946370_987239062109340_7000423069794419683_n_jmzgze.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 2
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632148118/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/PARQUE%20DE%20LA%20SALUD/230416617_987235732109673_1995422351833228045_n_g2qztf.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 3
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632148104/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/PARQUE%20DE%20LA%20SALUD/229133134_987236015442978_7756747456203715775_n_drw540.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        "https://res.cloudinary.com/lucianogutierrez/image/upload/v1632148101/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/PARQUE%20DE%20LA%20SALUD/228698442_987236072109639_6799342296020467104_n_plfimc.jpg",
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632148081/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/PARQUE%20DE%20LA%20SALUD/236891964_986205782212668_3947578328761383119_n_vdxrkm.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 4
                  ],
                ),

                //UBICACION

                //TELEFONO
                Divider(
                  color: Colors.transparent,
                ),
                ListTile(
                  title: Text("DESCRIPCIÓN"),
                  subtitle: Text(
                    "El Parque de la Salud es un «gimnasio al aire libre»,  posee instalaciones  para hacer gimnasia localizada, relajación, distención, juegos y contemplación. Dichas instalaciones se complementan con estacionamiento propio y baños públicos",
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black45),
                  ),
                ),
                Divider(),

                ListTile(
                  title: Text("CARACTERÍSTICAS DEL LUGAR"),
                  subtitle: Text("*Baños Publicos,Actividades Recreativas.",
                      textAlign: TextAlign.justify),
                ),
                Divider(),

                // PAGINA WEB

                ListTile(
                  title: Text("RECOMENDACIONES"),
                  subtitle: Text("No dejar basura,Cuidar las Instalaciones.",
                      textAlign: TextAlign.justify),
                ),
                Divider(),

                //DIAS Y HORARIOS

                ListTile(
                  title: Text("DIAS Y HORARIOS"),
                  subtitle: Text("Todos Los Dias"),
                ),
                Divider(),
                ListTile(
                  leading: ImageIcon(
                    AssetImage("assets/icon/maps.png"),
                    color: Colors.black,
                    size: 80,
                  ),
                  title: Text("UBICACIÓN"),
                  subtitle: Text("Ruta 23,Rosario de Lerma, Salta"),
                  onTap: () async {
                    const url =
                        "https://maps.google.com/maps?Tu+ubicaci%C3%B3n&daddr=Parque+de+la+Salud=cars";
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw "Could not launch $url";
                    }
                  },
                ),
                Divider(),
              ],
            ),
          );
        },
      ),
    );
  }
}

//PARQUE EVITA

class ParqueEvita extends StatefulWidget {
  @override
  _ParqueEvitaState createState() => _ParqueEvitaState();
}

class _ParqueEvitaState extends State<ParqueEvita> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PARQUE EVITA"),
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
                    height: 250.0,
                    initialPage: 1,
                    autoPlay: true,
                  ),
                  items: [
                    //IMAGEN NUMERO 1
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632148169/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/PARQUE%20EVITA/228526612_987240482109198_5445436867483824582_n_rwwzbb.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 2
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632148158/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/PARQUE%20EVITA/227134855_987240768775836_7151784503068154038_n_i8om9x.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 3
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632148175/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/PARQUE%20EVITA/228028982_987241188775794_660893791324762650_n_kserl2.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        "https://res.cloudinary.com/lucianogutierrez/image/upload/v1632148177/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/PARQUE%20EVITA/228547104_987240848775828_6429518226559759319_n_sqpvzq.jpg",
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 4
                  ],
                ),

                //UBICACION

                //TELEFONO
                Divider(
                  color: Colors.transparent,
                ),
                ListTile(
                  title: Text("DESCRIPCIÓN"),
                  subtitle: Text(
                    "El Parque Evita,es un espacio recreativo para toda la familia,es el centro de multiples actividades culturales y sociales,cuenta con: Baños Publicos,Cancha de Futbol,Cancha de Basquet.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black45),
                  ),
                ),
                Divider(),

                ListTile(
                  title: Text("CARACTERISTICAS DEL LUGAR"),
                  subtitle: Text(
                      "*Monumento a la Pachamama,Parque Padre Chifri,Juegos,Cancha de Futbol y Basquet,Baños Publicos.",
                      textAlign: TextAlign.justify),
                ),
                Divider(),

                // PAGINA WEB

                ListTile(
                  title: Text("RECOMENDACIONES"),
                  subtitle: Text("No dejar basura,Cuidar las Instalaciones.",
                      textAlign: TextAlign.justify),
                ),
                Divider(),

                //DIAS Y HORARIOS

                ListTile(
                  title: Text("DIAS Y HORARIOS"),
                  subtitle: Text("Todos Los Dias"),
                ),
                Divider(),
                ListTile(
                  leading: ImageIcon(
                    AssetImage("assets/icon/maps.png"),
                    color: Colors.black,
                    size: 80,
                  ),
                  title: Text("UBICACIÓN"),
                  subtitle: Text("Rosario de Lerma, Salta"),
                  onTap: () async {
                    const url =
                        "https://maps.google.com/maps?Tu+ubicaci%C3%B3n&daddr=Parque+Evita=cars";
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw "Could not launch $url";
                    }
                  },
                ),
                Divider(),
              ],
            ),
          );
        },
      ),
    );
  }
}

//PLAZA SAN RAFAEL

class PlazaSanRafael extends StatefulWidget {
  @override
  _PlazaSanRafaelState createState() => _PlazaSanRafaelState();
}

class _PlazaSanRafaelState extends State<PlazaSanRafael> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("PLAZA SAN RAFAEL"),
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
                      height: 250,
                      initialPage: 1,
                      autoPlay: true,
                    ),
                    items: [
                      //IMAGEN NUMERO 1
                      FadeInImage(
                        placeholder: AssetImage("assets/icon/loading.gif"),
                        image: NetworkImage(
                          'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632148510/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/PLAZA%20SAN%20RAFAEL/227510024_986206868879226_6074761319013104992_n_q86vjs.jpg',
                        ),
                        fit: BoxFit.fill,
                        height: double.infinity,
                        width: double.infinity,
                      ),

                      //IMAGEN NUMERO 2
                      FadeInImage(
                        placeholder: AssetImage("assets/icon/loading.gif"),
                        image: NetworkImage(
                          'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632148489/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/PLAZA%20SAN%20RAFAEL/214231970_986205975545982_230275045646379441_n_z04x7i.jpg',
                        ),
                        fit: BoxFit.fill,
                        height: double.infinity,
                        width: double.infinity,
                      ),

                      //IMAGEN NUMERO 3
                      FadeInImage(
                        placeholder: AssetImage("assets/icon/loading.gif"),
                        image: NetworkImage(
                          'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632148492/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/PLAZA%20SAN%20RAFAEL/237365802_986207135545866_6309248160601248497_n_hrdxv7.jpg',
                        ),
                        fit: BoxFit.fill,
                        height: double.infinity,
                        width: double.infinity,
                      ),
                      FadeInImage(
                        placeholder: AssetImage("assets/icon/loading.gif"),
                        image: NetworkImage(
                          'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632148470/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/PLAZA%20SAN%20RAFAEL/231343820_986205238879389_3169791211162830080_n_xqyp0j.jpg',
                        ),
                        fit: BoxFit.fill,
                        height: double.infinity,
                        width: double.infinity,
                      ),
                      FadeInImage(
                        placeholder: AssetImage("assets/icon/loading.gif"),
                        image: NetworkImage(
                          'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632148467/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/PLAZA%20SAN%20RAFAEL/230177169_986205598879353_8691702467179965930_n_ylhs98.jpg',
                        ),
                        fit: BoxFit.fill,
                        height: double.infinity,
                        width: double.infinity,
                      ),

                      //IMAGEN NUMERO 4
                    ],
                  ),

                  //UBICACION

                  //TELEFONO
                  Divider(
                    color: Colors.transparent,
                  ),
                  ListTile(
                    title: Text("DESCRIPCIÓN"),
                    subtitle: Text(
                      "La plaza de San Rafael,esta ubicada a la vuelta de la plaza central,Es un lugar recreativo para toda la familia,cuenta con unas enormes palmeras que embellecen toda la plaza.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black45),
                    ),
                  ),
                  Divider(),

                  ListTile(
                    title: Text("CARACTERÍSTICAS DEL LUGAR"),
                    subtitle: Text(
                        "*Juegos,Cancha de Futbol 5,Santuario a San Rafael.",
                        textAlign: TextAlign.justify),
                  ),
                  Divider(),

                  // PAGINA WEB

                  ListTile(
                    title: Text("RECOMENDACIONES"),
                    subtitle: Text("No dejar basura,Cuidar las Instalaciones.",
                        textAlign: TextAlign.justify),
                  ),
                  Divider(),

                  //DIAS Y HORARIOS

                  ListTile(
                    title: Text("DIAS Y HORARIOS"),
                    subtitle: Text("Todos Los Dias"),
                  ),
                  Divider(),
                  ListTile(
                    leading: ImageIcon(
                      AssetImage("assets/icon/maps.png"),
                      color: Colors.black,
                      size: 80,
                    ),
                    title: Text("UBICACIÓN"),
                    subtitle: Text("Rosario de Lerma, Salta"),
                    onTap: () async {
                      const url =
                          "https://maps.google.com/maps?Tu+ubicaci%C3%B3n&daddr=San+Rafael+Las+Palmeras=cars";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw "Could not launch $url";
                      }
                    },
                  ),
                  Divider(),
                ],
              ),
            );
          },
        ));
  }
}

//PLAZA CENTRAL

class PlazaCentral extends StatefulWidget {
  @override
  _PlazaCentralState createState() => _PlazaCentralState();
}

class _PlazaCentralState extends State<PlazaCentral> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PLAZA TORINO DE VIANA"),
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
                    height: 250,
                    initialPage: 1,
                    autoPlay: true,
                  ),
                  items: [
                    //IMAGEN NUMERO 1
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632149653/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/PLAZA%20CENTRAL/239200379_987247122108534_6724640888660469446_n_baniem.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 2
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632149553/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/PLAZA%20CENTRAL/238970241_987246932108553_1923865145666980719_n_1_bwvd8p.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 3
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632149551/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/PLAZA%20CENTRAL/239134234_987246852108561_7614042055572327423_n_qm6wfl.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632149566/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/PLAZA%20CENTRAL/238980055_987247078775205_5710122475132962667_n_iryba7.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632149531/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/PLAZA%20CENTRAL/239115732_987246972108549_3798731769340989694_n_li7a3t.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                    //IMAGEN NUMERO 4
                  ],
                ),

                //UBICACION

                //TELEFONO
                Divider(
                  color: Colors.transparent,
                ),
                ListTile(
                  title: Text("DESCRIPCIÓN"),
                  subtitle: Text(
                    "La Plaza Coronel Jorge Torino de Viana,es un lugar histórico para nuestra ciudad,en donde se realizán los multiples actos civícos,culturales y demás actividades de suma importancia.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black45),
                  ),
                ),
                Divider(),

                ListTile(
                  title: Text("CARACTERÍSTICAS DEL LUGAR"),
                  subtitle: Text(
                      "*Esta ubicada en la zona céntrica de la cuidad.",
                      textAlign: TextAlign.justify),
                ),
                Divider(),

                // PAGINA WEB

                ListTile(
                  title: Text("RECOMENDACIONES"),
                  subtitle: Text("No dejar basura,Cuidar las Instalaciones.",
                      textAlign: TextAlign.justify),
                ),
                Divider(),

                //DIAS Y HORARIOS

                ListTile(
                  title: Text("DIAS Y HORARIOS"),
                  subtitle: Text("Todos Los Dias"),
                ),
                Divider(),
                ListTile(
                  leading: ImageIcon(
                    AssetImage("assets/icon/maps.png"),
                    color: Colors.black,
                    size: 80,
                  ),
                  title: Text("UBICACIÓN"),
                  subtitle: Text("Rosario de Lerma, Salta"),
                  onTap: () async {
                    const url =
                        "https://maps.google.com/maps?Tu+ubicaci%C3%B3n&daddr=Plaza+Coronel+Jorge+Torino+de+Viana=cars";
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw "Could not launch $url";
                    }
                  },
                ),
                Divider(),
              ],
            ),
          );
        },
      ),
    );
  }
}

//LA IGLESIA CENTRAL

class IglesiaCentral extends StatefulWidget {
  @override
  _IglesiaCentralState createState() => _IglesiaCentralState();
}

class _IglesiaCentralState extends State<IglesiaCentral> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PARROQUIA NUESTRA SEÑORA DEL ROSARIO"),
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
                    height: 250,
                    initialPage: 1,
                    autoPlay: true,
                  ),
                  items: [
                    //IMAGEN NUMERO 1
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632148711/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/IGLESIA/238934359_987255278774385_3416695503150391660_n_svmhyw.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 2
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632148726/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/IGLESIA/239211931_987255718774341_4121653007728642022_n_jif0on.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 3
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632148726/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/IGLESIA/238903650_987255692107677_5610378487192660547_n_rl2ulh.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632148727/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/IGLESIA/239190395_987255808774332_5615427043291743039_n_kza42o.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        "https://res.cloudinary.com/lucianogutierrez/image/upload/v1632148710/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/IGLESIA/238942904_987255602107686_1550036441003895043_n_jaxdr1.jpg",
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 4
                  ],
                ),

                //UBICACION

                //TELEFONO
                Divider(
                  color: Colors.transparent,
                ),
                ListTile(
                  title: Text("DESCRIPCIÓN"),
                  subtitle: Text(
                    "La Parroquia Nuestra Señora de Rosario,es nombrada asi por nuestra santa patrona,la virgen del rosario que se celebra su dia el 07 de Octubre de cada año.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black45),
                  ),
                ),
                Divider(),

                ListTile(
                  title: Text("CARACTERÍSTICAS DEL LUGAR"),
                  subtitle: Text(
                      "*Actividades Religiosa,Misas,Fiestas Patronales.",
                      textAlign: TextAlign.justify),
                ),
                Divider(),

                // PAGINA WEB

                ListTile(
                  title: Text("RECOMENDACIONES"),
                  subtitle: Text(
                      "Apagar el celular,Mantener el orden,Conservar el silencio.",
                      textAlign: TextAlign.justify),
                ),
                Divider(),

                //DIAS Y HORARIOS

                ListTile(
                  title: Text("DIAS Y HORARIOS"),
                  subtitle: Text(
                      "Abierto Todos los dias apartir de 09:00 hs - 20:00 hs"),
                ),
                Divider(),
                ListTile(
                  leading: ImageIcon(
                    AssetImage("assets/icon/maps.png"),
                    color: Colors.black,
                    size: 80,
                  ),
                  title: Text("UBICACIÓN"),
                  subtitle: Text("Rosario de Lerma, Salta"),
                  onTap: () async {
                    const url =
                        "https://maps.google.com/maps?Tu+ubicaci%C3%B3n&daddr=Parroquia+Nuestra+Señora+del+Rosario=cars";
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw "Could not launch $url";
                    }
                  },
                ),
                Divider(),
              ],
            ),
          );
        },
      ),
    );
  }
}

//CAPILLA SAN CAYETANO

class CapillaCayetano extends StatefulWidget {
  @override
  _CapillaCayetanoState createState() => _CapillaCayetanoState();
}

class _CapillaCayetanoState extends State<CapillaCayetano> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PARROQUIA SANTA RITA"),
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
                    height: 250,
                    initialPage: 1,
                    autoPlay: true,
                  ),
                  items: [
                    //IMAGEN NUMERO 1
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632592425/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/SANTA%20RITA/IMG_20210924_183117763_plbrnk.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 2
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632592383/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/SANTA%20RITA/IMG_20210924_183100424_sweszq.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 3
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632593069/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/SANTA%20RITA/IMG_20210924_183023861_c1fl2o.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632592359/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/SANTA%20RITA/IMG_20210924_183130790_iunzb3.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632593011/ROSARIO%20DE%20LERMA/LUGARES%20POR%20VISITAR/SANTA%20RITA/IMG_20210924_182948224_qosus4.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 4
                  ],
                ),

                //UBICACION

                //TELEFONO
                Divider(
                  color: Colors.transparent,
                ),
                ListTile(
                  title: Text("DESCRIPCIÓN"),
                  subtitle: Text(
                    "La Parroquia Santa Rita,tiene una importante historia para todos nosotros los rosarinos,lugar en donde se celebra multiples actividades patronales y religiosas.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black45),
                  ),
                ),
                Divider(),

                ListTile(
                  title: Text("CARACTERÍSTICAS DEL LUGAR"),
                  subtitle: Text(
                      "*Actividades Religiosa,Misas,Fiestas Patronales.",
                      textAlign: TextAlign.justify),
                ),
                Divider(),

                // PAGINA WEB

                ListTile(
                  title: Text("RECOMENDACIONES"),
                  subtitle: Text(
                      "Apagar el celular,Mantener el orden,Conservar el silencio.",
                      textAlign: TextAlign.justify),
                ),
                Divider(),

                //DIAS Y HORARIOS

                ListTile(
                  title: Text("DIAS Y HORARIOS"),
                  subtitle: Text(
                      "Abierto Todos los dias apartir de 18:00 hs - 20:00 hs"),
                ),
                Divider(),
                ListTile(
                  leading: ImageIcon(
                    AssetImage("assets/icon/maps.png"),
                    color: Colors.black,
                    size: 80,
                  ),
                  title: Text("UBICACIÓN"),
                  subtitle: Text("Rosario de Lerma, Salta"),
                  onTap: () async {
                    const url =
                        "https://maps.google.com/maps?Tu+ubicaci%C3%B3n&daddr=Parroquia+Santa+Rita+de+Casia=cars";
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw "Could not launch $url";
                    }
                  },
                ),
                Divider(),
              ],
            ),
          );
        },
      ),
    );
  }
}

//CORRALITO

// class Corralito extends StatefulWidget {
//   @override
//   _CorralitoState createState() => _CorralitoState();
// }

// class _CorralitoState extends State<Corralito> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("CORRALITO"),
//         backgroundColor: Colors.black,
//       ),
//       body: ListView.builder(
//         itemCount: 1,
//         itemBuilder: (_, index) {
//           return Container(
//             child: Column(
//               children: [
//                 CarouselSlider(
//                   options: CarouselOptions(
//                     height: 290.0,
//                     initialPage: 1,
//                   ),
//                   items: [
//                     //IMAGEN NUMERO 1
//                     FadeInImage(
//                       placeholder: AssetImage("assets/icon/loading.gif"),
//                       image: NetworkImage(
//                         'https://scontent-eze1-1.xx.fbcdn.net/v/t1.6435-9/126430518_207114920812264_7307038582168789720_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=8bfeb9&_nc_ohc=i8mQe9MzwjoAX-9-8sD&_nc_ht=scontent-eze1-1.xx&oh=672d18641a758318ea6895f7c0f01026&oe=612DCE09',
//                       ),
//                       fit: BoxFit.fill,
//                       width: 300.0,
//                     ),

//                     //IMAGEN NUMERO 2
//                     FadeInImage(
//                       placeholder: AssetImage("assets/icon/loading.gif"),
//                       image: NetworkImage(
//                         'https://scontent-eze1-1.xx.fbcdn.net/v/t1.6435-9/116467961_177886273735129_6254420104265418110_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=8bfeb9&_nc_ohc=RflQNJ_rM5AAX8hTpq6&tn=VP6yR5XJwMKorwqd&_nc_ht=scontent-eze1-1.xx&oh=9153c41b4b576f479e54720f8e6b74c6&oe=612E2EE7',
//                       ),
//                       fit: BoxFit.fill,
//                     ),

//                     //IMAGEN NUMERO 3
//                     FadeInImage(
//                       placeholder: AssetImage("assets/icon/loading.gif"),
//                       image: NetworkImage(
//                         'https://scontent-eze1-1.xx.fbcdn.net/v/t1.6435-9/107638070_171497247707365_1780936679157523547_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=8bfeb9&_nc_ohc=aVgkAMAu900AX-_lywL&_nc_ht=scontent-eze1-1.xx&oh=59d278cd7b07b169d0d62d13d96eb459&oe=612E11EE',
//                       ),
//                       fit: BoxFit.fill,
//                     ),
//                     FadeInImage(
//                       placeholder: AssetImage("assets/icon/loading.gif"),
//                       image: NetworkImage(
//                         'https://scontent-eze1-1.xx.fbcdn.net/v/t1.6435-9/106496988_171497131040710_1964307118677615221_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=8bfeb9&_nc_ohc=-XAhexFN4tgAX-PAPKe&_nc_ht=scontent-eze1-1.xx&oh=9182f150f68510ea2e79a66df9b31c6f&oe=612EE8E6',
//                       ),
//                       fit: BoxFit.fill,
//                     ),

//                     //IMAGEN NUMERO 4
//                   ],
//                 ),

//                 //UBICACION

//                 //TELEFONO
//                 Divider(
//                   color: Colors.transparent,
//                 ),
//                 ListTile(
//                   title: Text("DESCRIPCIÓN"),
//                   subtitle: Text(
//                     "El Parque de la Salud se define como un «gimnasio al aire libre», ya que posee las instalaciones necesarias para hacer gimnasia localizada, relajación, distención, juegos y contemplación. Dichas instalaciones se complementan con estacionamiento propio y baños públicos, así como un importante desarrollo de paisajismo e iluminación.",
//                     textAlign: TextAlign.justify,
//                     style: TextStyle(color: Colors.black45),
//                   ),
//                 ),
//                 Divider(),

//                 ListTile(
//                   title: Text("CARACTERISTICAS DEL LUGAR"),
//                   subtitle: Text("*Correr,Actividades Recreativas,Pesca.",
//                       textAlign: TextAlign.justify),
//                 ),
//                 Divider(),

//                 // PAGINA WEB

//                 ListTile(
//                   title: Text("RECOMENDACIONES"),
//                   subtitle: Text("No dejar basura,Cuidar las Instalaciones.",
//                       textAlign: TextAlign.justify),
//                 ),
//                 Divider(),

//                 //DIAS Y HORARIOS

//                 ListTile(
//                   title: Text("DIAS Y HORARIOS"),
//                   subtitle: Text("Todos Los Dias"),
//                 ),
//                 Divider(),
//                 ListTile(
//                   leading: ImageIcon(
//                     AssetImage("assets/icon/maps.png"),
//                     color: Colors.black,
//                     size: 80,
//                   ),
//                   title: Text("UBICACIÓN"),
//                   subtitle: Text("Ruta 23,Rosario de Lerma, Salta"),
//                   onTap: () async {
//                     const url = "https://goo.gl/maps/KEkByifZtSSL2sS87";
//                     if (await canLaunch(url)) {
//                       await launch(url);
//                     } else {
//                       throw "Could not launch $url";
//                     }
//                   },
//                 ),
//                 Divider(),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
