import 'package:flutter/material.dart';
import 'package:turismorosariodelerma/src/classTabview/call_import.dart';

class PhonesImport extends StatefulWidget {
  @override
  _PhonesImportState createState() => _PhonesImportState();
}

class _PhonesImportState extends State<PhonesImport> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                  child: Image(
                      image: AssetImage("assets/icon/police.png"),
                      color: Colors.white)),
              Tab(
                  child: Image(
                      image: AssetImage("assets/icon/taxi.png"),
                      color: Colors.white)),
              Tab(
                  child: Image(
                      image: AssetImage("assets/icon/delibery.png"),
                      color: Colors.white)),
            ],
          ),
          title: Text('TELEFONOS IMPORTANTES'),
        ),
        body: TabBarView(
          children: <Widget>[
            new CallImport(),
            new TaxiCall(),
            new DeliberyCall()
          ],
        ),
      ),
    );
  }
}
