import 'package:app_treinamento/pages/start/widgets/bottom_bar_item.dart';
import 'package:app_treinamento/pages/status_beacons/status_beacons.view.dart';
import 'package:flutter/material.dart';

class BottomBarLogic {
  int currentIndex = 0;

  //Lista de itens que compoe o bottom navigation bar
  var items = [
    barItem(
      Icons.home,
      "Home",
    ),
    barItem(
      Icons.notifications_none,
      "Notificações",
    ),
  ];

//Lista de paginas
  final bodyList = [
    StatusBeaconView(),
    NotifyView(),
  ];
}

class NotifyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Notificacoes!!!!!!!!"),
    );
  }
}
