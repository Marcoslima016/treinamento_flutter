import 'package:app_treinamento/pages/start/tabs/notify/logica/models/notify_item.dart';
import 'package:app_treinamento/pages/start/tabs/notify/logica/notify.logic.dart';
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
          NotifyItem item = notifyLogic.listaNot[index];
          return Card(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(
                top: h,
                bottom: h,
                left: w * 3,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.warning,
                    size: h * 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        item.titulo,
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        item.texto,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        item.dthr,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      FlatButton(
                        child: Text(
                          "Abrir",
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                        onPressed: () {},
                      ),
                      FlatButton(
                        child: Text("Fechar",
                            style: TextStyle(
                              color: Colors.red,
                            )),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
