import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(PaseoAnden());

class PaseoAnden extends StatefulWidget {
  @override
  _HotelValleState createState() => _HotelValleState();
}

class _HotelValleState extends State<PaseoAnden> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ARTEZANOS DEL ANDÉN"),
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
                    height: 220,
                    initialPage: 1,
                    autoPlay: true,
                  ),
                  items: [
                    //IMAGEN NUMERO 1
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632151361/ROSARIO%20DE%20LERMA/ACTIVIDADES/EMPRENDEDORES%20DOMINGO/124017937_203207174536372_351480082989858778_n_ieggoh.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 2
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632151368/ROSARIO%20DE%20LERMA/ACTIVIDADES/EMPRENDEDORES%20DOMINGO/201393707_112888254366490_7632625544169744794_n_bvzuvu.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 3
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632151363/ROSARIO%20DE%20LERMA/ACTIVIDADES/EMPRENDEDORES%20DOMINGO/124162798_203207254536364_4322543137362670016_n_pfan7g.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632151369/ROSARIO%20DE%20LERMA/ACTIVIDADES/EMPRENDEDORES%20DOMINGO/197175159_112888427699806_2918098273099478418_n_ydk7pc.jpg',
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
                    "La feria de los Artezanos del Andén,se realiza todos dias domingos apartir de las 14 hs hasta 22hs ,en donde usted podra compartir una linda experiencia en familia juntos a los feriantes,que tendrán para ofrecerle los mejores productos de nuestra localidad,los esperamos en el Parque Evita",
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black45),
                  ),
                ),
                Divider(),

                ListTile(
                  title: Text("CARACTERÍSTICAS DEL LUGAR"),
                  subtitle: Text("Juegos,Musica,Actividades,Recreación.",
                      textAlign: TextAlign.justify),
                ),
                Divider(),

                // PAGINA WEB

                ListTile(
                  title: Text("RECOMENDACIONES"),
                  subtitle: Text(
                      "Cuidar la limpieza,Mantener el distanciamiento.",
                      textAlign: TextAlign.justify),
                ),
                Divider(),

                //DIAS Y HORARIOS

                ListTile(
                  title: Text("DIAS Y HORARIOS"),
                  subtitle: Text("Los dias Domingos desde 14hs - 22hs."),
                ),
                Divider(),
                ListTile(
                  leading: ImageIcon(
                    AssetImage("assets/icon/maps.png"),
                    color: Colors.black,
                    size: 80,
                  ),
                  title: Text("UBICACIÓN"),
                  subtitle: Text("Parque Evita,Rosario de Lerma, Salta"),
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

class EmprendedoresPlaza extends StatefulWidget {
  @override
  _EmprendedoresPlazaState createState() => _EmprendedoresPlazaState();
}

class _EmprendedoresPlazaState extends State<EmprendedoresPlaza> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FERIA DE EMPRENDEDORES"),
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
                    height: 220.0,
                    initialPage: 1,
                    autoPlay: true,
                  ),
                  items: [
                    //IMAGEN NUMERO 1
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632150931/ROSARIO%20DE%20LERMA/ACTIVIDADES/EMPRENDEDORES%20SABADOS/156595246_272065440983878_1149070041585050418_n_vggfj8.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 2
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632150925/ROSARIO%20DE%20LERMA/ACTIVIDADES/EMPRENDEDORES%20SABADOS/205766904_343126347211120_3223619622491166950_n_brxnun.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 3
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632150928/ROSARIO%20DE%20LERMA/ACTIVIDADES/EMPRENDEDORES%20SABADOS/211121452_343126270544461_5466796756811579195_n_gedryp.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                    //IMAGEN NUMERO 4
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632150924/ROSARIO%20DE%20LERMA/ACTIVIDADES/EMPRENDEDORES%20SABADOS/222204792_360463422144079_5348837324139699530_n_lexgbc.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    //IMAGEN NUMERO 5
                    FadeInImage(
                      placeholder: AssetImage("assets/icon/loading.gif"),
                      image: NetworkImage(
                        'https://res.cloudinary.com/lucianogutierrez/image/upload/v1632150917/ROSARIO%20DE%20LERMA/ACTIVIDADES/EMPRENDEDORES%20SABADOS/157269552_272065534317202_5627924374017780270_n_w3lhsc.jpg',
                      ),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),
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
                    "La Feria de los Emprendedores,se realiza todos dias sabados apartir de las 17 hs hasta 22hs ,en la plaza central de nuestra ciudad,donde usted podra compartir una linda experiencia en familia juntos a los feriantes que tendrán para ofrecerle los mejores productos de nuestra localidad.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black45),
                  ),
                ),
                Divider(),

                ListTile(
                  title: Text("CARACTERÍSTICAS DEL LUGAR"),
                  subtitle: Text("Juegos,Musica,Actividades.",
                      textAlign: TextAlign.justify),
                ),
                Divider(),

                // PAGINA WEB

                ListTile(
                  title: Text("RECOMENDACÍONES"),
                  subtitle: Text(
                      "Cuidar la limpieza,las instalaciones y mantener el distanciamiento.",
                      textAlign: TextAlign.justify),
                ),
                Divider(),

                //DIAS Y HORARIOS

                ListTile(
                  title: Text("DIAS Y HORARIOS"),
                  subtitle: Text("Todos los dias Sabados desde 17hs - 22hs."),
                ),
                Divider(),
                ListTile(
                  leading: ImageIcon(
                    AssetImage("assets/icon/maps.png"),
                    color: Colors.black,
                    size: 80,
                  ),
                  title: Text("UBICACIÓN"),
                  subtitle: Text("Plaza Central,Rosario de Lerma, Salta"),
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
