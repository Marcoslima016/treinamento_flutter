import 'package:flutter/material.dart';

import '../logica/store/beacon_store.dart';
import 'card_beacon.wid.dart';

class StatusTextStyle extends StatelessWidget {
  StatusTextStyle({this.beaconStore});

  BeaconStore beaconStore;

  @override
  Widget build(BuildContext context) {
    return Text(beaconStore.statusAlcance,
        style: TextStyle(
          fontSize: 20,
          color: Colors.grey.withOpacity(0.6),
        ));
  }
}
