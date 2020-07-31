import 'package:app_treinamento/pages/start/tabs/notify/logica/models/notify_item.dart';
import 'package:app_treinamento/pages/start/tabs/notify/logica/notify.logic.dart';
import 'package:app_treinamento/pages/start/tabs/notify/widgets/card_notify.widget.dart';
import 'package:flutter/material.dart';

class NotifyView extends StatelessWidget {
  //
  NotifyLogic notifyLogic = NotifyLogic();

  ///
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width / 100;
    double h = MediaQuery.of(context).size.height / 100;
    return Container(
      height: h * 100,
      child: ListView.builder(
        padding: EdgeInsets.only(top: h * 10, right: w * 3, left: w * 3),
        itemCount: notifyLogic.listaNot.length,
        //reverse: true,
        itemBuilder: (BuildContext context, int index) {
          return CardNotfy();
        },
      ),
    );
  }
}
