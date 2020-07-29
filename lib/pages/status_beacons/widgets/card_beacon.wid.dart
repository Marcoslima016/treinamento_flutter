import 'package:app_treinamento/pages/status_beacons/logica/store/beacon_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TextBeacon extends StatelessWidget {
  TextBeacon({
    @required this.beaconStore,
  });

  BeaconStore beaconStore;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width / 100;
    double h = MediaQuery.of(context).size.height / 100;

    return Column(
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
    );
  }
}
