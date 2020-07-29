import 'dart:async';

import 'package:app_treinamento/beacon/logica/models/beacon_item.dart';
import 'package:app_treinamento/beacon/logica/store/beacon_store.dart';
import 'package:app_treinamento/core/widgets/metodos/metodos_timestamp.dart';
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

  BeaconItem beaconItem = BeaconItem();

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

    await startBeaconItem();

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
    verifyStatusBeacon();
  }

  //---------------------- MONTAR BEACON ITEM ------------------

  Future startBeaconItem() async {
    //
    var timeStampAtual = await getAtualTs();

    beaconItem.id = 0;
    beaconItem.uuid = "A99D25CD-4C7B-416E-9E1A-7AD54026DCC4";
    beaconItem.status = 0;
    beaconItem.timestamp = timeStampAtual;
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

      beaconFound = false;

      if (result != null) {
        if (result.beacons.length > 0) {
          //

          print(
              "RANGING DETECTADO - BEACON AO ALCANCE: " + distancia.toString());

          if (distancia < 0) {
            //BEACON AFASTADO

            setStatus(0);
          } else {
            //BEACON AO ALCANCE

            setStatus(1);
          }

          beaconFound = true;

          //
        } else {
          print("RANGING  VAZIO");
        }
      }
    });
  }

  //-------------------- VERIFY STATUS ---------------------

  //Verifica o status do beacon e atualiza a tela
  Future verifyStatusBeacon() async {
    beaconFound = false;

    Timer.periodic(Duration(seconds: 3), (timer) async {
      //

      var status = beaconItem.status;
      var timeStamp = beaconItem.timestamp;

      if (status == 1) {
        beaconStore.setStatusBeacon(status);
      } else {
        //
        var difTs = await compareTs(timeStamp);

        if (difTs > 25) {
          beaconStore.setStatusBeacon(status);
        }
      }
    });
  }

  //----------------------- SET STATUS ------------------------

  //Seta o status do beacon
  Future setStatus(status) async {
    var ts = await getAtualTs();

    beaconItem.status = status;
    beaconItem.timestamp = ts;

    // beaconStore.setStatusBeacon(status);
  }

  //-------------------------------------------------------

  closeStream() {
    streamController.close();
  }
}
