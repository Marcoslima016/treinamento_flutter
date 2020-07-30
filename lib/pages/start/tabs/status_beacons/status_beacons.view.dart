import 'package:app_treinamento/pages/start/tabs/status_beacons/logica/scan_beacon.logic.dart';
import 'package:app_treinamento/pages/start/tabs/status_beacons/logica/store/beacon_store.dart';
import 'package:app_treinamento/pages/start/tabs/status_beacons/widgets/card_beacon.wid.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search,
              size: 30,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        width: w * 100,
        child: CardBeacon(
          beaconStore: beaconStore,
        ),
      ),
    );
  }
}
