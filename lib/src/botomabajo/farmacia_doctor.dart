import 'package:flutter/material.dart';
import 'package:turismorosariodelerma/src/classTabview/pharmacity_doctor.dart';

class FarmaciaDoctor extends StatefulWidget {
  @override
  _FarmaciaDoctorState createState() => _FarmaciaDoctorState();
}

class _FarmaciaDoctorState extends State<FarmaciaDoctor> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                  child: Image(
                      image: AssetImage("assets/icon/hospital.png"),
                      color: Colors.white)),
              Tab(
                  child: Image(
                      image: AssetImage("assets/icon/farmacia.png"),
                      color: Colors.white)),
            ],
          ),
          title: Text('HOSPITAL - FARMACIAS'),
        ),
        body: TabBarView(
          children: <Widget>[
            new Hospital(),
            new Famacia(),
          ],
        ),
      ),
    );
  }
}
