import 'package:flutter/material.dart';

import '../logica/models/notify_item.dart';
import '../logica/notify.logic.dart';

class CardNotfy extends StatelessWidget {
  NotifyLogic notifyLogic = NotifyLogic();
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width / 100;
    double h = MediaQuery.of(context).size.height / 100;
    int index = 0;
    NotifyItem item = notifyLogic.listaNot[index];
    return Container(
      child: Card(
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
      ),
    );
  }
}
