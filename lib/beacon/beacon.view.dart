import 'package:app_treinamento/beacon/logica/scan_beacon.logic.dart';
import 'package:app_treinamento/beacon/logica/store/beacon_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class BeaconView extends StatefulWidget {
  //
  @override
  _BeaconViewState createState() => _BeaconViewState();
}

class _BeaconViewState extends State<BeaconView> {
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: scanBeacon.changeStatus,
      ),
      body: Container(
        width: w * 100,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: h * 20,
            ),
            Container(
              margin: new EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Observer(
                builder: (_) {
                  ///
                  return Row(
                    children: <Widget>[
                      Text(
                        "Status Device: ",
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        beaconStore.statusAlcance,
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
