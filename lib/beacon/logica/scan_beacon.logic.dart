import 'dart:async';

import 'package:app_treinamento/beacon/logica/store/beacon_store.dart';
import 'package:flutter_beacon/flutter_beacon.dart';

class ScanBeaconLogic {
  ScanBeaconLogic({
    this.beaconStore,
  }) {
    startBeacon();
  }

  //===================================================== VARIAVEIS ===================================================

  BeaconStore beaconStore;

  final StreamController<BluetoothState> streamController = StreamController();
  StreamSubscription<BluetoothState> _streamBluetooth;
  StreamSubscription<RangingResult> _streamRanging;
  final _regionBeacons = <Region, List<Beacon>>{};

  final regions = <Region>[];

  //===================================================== METODDS ===================================================

  //------------------------- START BEACON --------------------------

  Future startBeacon() async {
    if (_streamRanging != null) {
      if (_streamRanging.isPaused) {
        _streamRanging.resume();
        return;
      }
    }

    try {
      await flutterBeacon.initializeScanning;
      var point;
    } catch (e) {
      var point = e;
    }

    regions.add(
      Region(
        identifier: "1",
        proximityUUID: "A99D25CD-4C7B-416E-9E1A-7AD54026DCC4",
      ),
    );

    regions.add(
      Region(
        identifier: "2",
        proximityUUID: "3103A8F5-E4AC-4DBA-B074-529093D09143",
      ),
    );

    instanceRanging();
  }

  //------------------------- RANGING --------------------------

  bool beaconFound = false;

  Future instanceRanging() async {
    _streamRanging =
        flutterBeacon.ranging(regions).listen((RangingResult result) async {
      ///
      ///
      var teste = result;
      var point;

      var dadosBeacon = result.beacons[0];
      var distancia = dadosBeacon.accuracy;

      if (result != null) {
        if (result.beacons.length > 0) {
          //
          var point;
          beaconFound = true;

          changeStatus("Proximo");
        }
      }
    });
  }

  //-------------------- RESET BEACONS LIST ---------------------

  Future resetBeaconsList() async {
    // Timer.periodic(Duration(seconds: 3), (timer) {});
    beaconFound = false;

    Timer(Duration(seconds: 20), () {
      if (beaconFound == false) {
        changeStatus("Afastado");
      }
    });
  }

  //----------------------- CHANGE STATUS ------------------------

  changeStatus(status) {
    // var status;
    // if (beaconStore.statusAlcance == "Afastado") {
    //   status = "Proximo";
    // } else {
    //   status = "Afastado";
    // }

    resetBeaconsList();

    beaconStore.setStatusBeacon(status);
  }

  //-------------------------------------------------------

  closeStream() {
    streamController.close();
  }
}
