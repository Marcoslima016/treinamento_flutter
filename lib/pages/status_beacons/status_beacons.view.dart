import 'package:app_treinamento/pages/status_beacons/logica/scan_beacon.logic.dart';
import 'package:app_treinamento/pages/status_beacons/logica/store/beacon_store.dart';
import 'package:app_treinamento/pages/status_beacons/widgets/card_beacon.wid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class StatusBeaconView extends StatefulWidget {
  //
  @override
  _StatusBeaconViewState createState() => _StatusBeaconViewState();
}

class _StatusBeaconViewState extends State<StatusBeaconView> {
  //
  ///=================================== OBJETOS ===============================
  //

  BeaconStore beaconStore = BeaconStore();

  ScanBeaconLogic scanBeacon;

  ///=================================== METODOS ===============================
  ///

  @override
  void initState() {
    super.initState();

    scanBeacon = ScanBeaconLogic(
      beaconStore: beaconStore,
    );
  }

  ///==================================== TELA =================================
  ///
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width / 100;
    double h = MediaQuery.of(context).size.height / 100;

    return Scaffold(
      ///
      // appBar: AppBar(
      //   title: Text(title),
      // ),

      ///
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   // onPressed: scanBeacon.changeStatus(),
      // ),
      body: Container(
        width: w * 100,
        child: TextBeacon(
          beaconStore: beaconStore,
        ),
      ),
    );
  }
}
