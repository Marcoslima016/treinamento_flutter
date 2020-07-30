import 'package:app_treinamento/pages/start/tabs/status_beacons/logica/store/beacon_store.dart';
import 'package:app_treinamento/pages/start/tabs/status_beacons/widgets/text_status.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CardBeacon extends StatelessWidget {
  CardBeacon({
    @required this.beaconStore,
  });

  BeaconStore beaconStore;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width / 100;
    double h = MediaQuery.of(context).size.height / 100;

    return Container(
      // height: h * 0.27,
      width: w * 0.999,
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: h * 5,
          ),
          Container(
            margin: EdgeInsets.only(
              right: w * 14,
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.white70,
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: h * 4,
                  bottom: h * 4,
                  right: 8,
                  left: w * 4,
                ),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Beacon: 1",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: h * 1,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "Status: ",
                                style: TextStyle(
                                  color: Colors.grey.withOpacity(0.6),
                                  fontSize: 20,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                              StatusTextStyle(
                                beaconStore: beaconStore,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: h * 0.4,
                          ),
                          Text(
                            "Última atualização: ",
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.6),
                              fontSize: 20,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: w * 3),
                        child: Icon(
                          Icons.face,
                          size: h * 12,
                          color: Colors.red[900],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
