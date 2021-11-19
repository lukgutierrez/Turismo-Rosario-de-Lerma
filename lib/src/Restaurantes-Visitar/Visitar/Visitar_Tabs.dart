import 'package:flutter/material.dart';
import 'package:turismorosariodelerma/src/botomabajo/farmacia_doctor.dart';
import 'package:turismorosariodelerma/src/botomabajo/telefonos_import.dart';
import 'package:turismorosariodelerma/src/pages/Clases%20RDL/Lugares_Visitar.dart';
import 'package:turismorosariodelerma/src/pages/categoria_rdl.dart';

class VisitarTabs extends StatefulWidget {
  @override
  _VisitarTabsState createState() => _VisitarTabsState();
}

class _VisitarTabsState extends State<VisitarTabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            tabs: [
              Tab(child: Text("PARQUES")),
              Tab(child: Text("PLAZAS")),
              Tab(child: Text("IGLESIAS")),
            ],
          ),
          title: Text('LUGARES PARA VISITAR'),
        ),
        body: TabBarView(
          children: <Widget>[
            new Parques(),
            new Plazas(),
            new Iglesias(),
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
