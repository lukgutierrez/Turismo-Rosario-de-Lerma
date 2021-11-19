import 'package:flutter/material.dart';
import 'package:turismorosariodelerma/src/botomabajo/farmacia_doctor.dart';
import 'package:turismorosariodelerma/src/botomabajo/telefonos_import.dart';
import 'package:turismorosariodelerma/src/pages/Clases%20RDL/Gastronomicos.dart';
import 'package:turismorosariodelerma/src/pages/categoria_rdl.dart';

class RestauranteTabs extends StatefulWidget {
  @override
  _RestauranteTabsState createState() => _RestauranteTabsState();
}

class _RestauranteTabsState extends State<RestauranteTabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            tabs: [
              Tab(child: Text("RESTAURANTES")),
              Tab(child: Text("RESTO-BAR")),
            ],
          ),
          title: Text('GASTRONÓMICOS'),
        ),
        body: TabBarView(
          children: <Widget>[
            new Restaurantes(),
            new RestoBar(),
          ],
        ),
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
