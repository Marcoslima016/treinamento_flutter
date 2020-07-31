import 'package:app_treinamento/pages/start/tabs/notify/logica/models/notify_item.dart';

class NotifyLogic {
  NotifyLogic() {
    ///
    listaNot.add(
      NotifyItem(
        titulo: "Alerta",
        texto: "Beacon se aproximou!",
        dthr: "18:30 - 30/07"
      ),
    );

    ///
    listaNot.add(
      NotifyItem(
        titulo: "Alerta",
        texto: "Beacon se aproximou!",
        dthr: "06:30 - 30/07"
      ),
    );

    ///
    listaNot.add(
      NotifyItem(
        titulo: "Alerta",
        texto: "Beacon se aproximou!",
        dthr: "04:30 - 30/07"
      ),
    );

    var point;
  }

  List listaNot = List<NotifyItem>();
}
