import 'package:app_treinamento/pages/start/tabs/notify/logica/models/notify_item.dart';
import 'package:app_treinamento/pages/start/tabs/notify/logica/notify.logic.dart';
import 'package:flutter/material.dart';

class NotifyView extends StatelessWidget {
  //
  NotifyLogic notifyLogic = NotifyLogic();

  ///
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        padding: EdgeInsets.all(12.0),
        itemCount: notifyLogic.listaNot.length,
        //reverse: true,
        itemBuilder: (BuildContext context, int index) {
          NotifyItem item = notifyLogic.listaNot[index];

          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(item.titulo),
              Text(item.texto),
            ],
          );
        },
      ),
    );
  }
}
