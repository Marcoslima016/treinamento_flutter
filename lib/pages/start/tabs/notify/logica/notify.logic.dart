import 'package:app_treinamento/pages/start/tabs/notify/logica/models/notify_item.dart';

class NotifyLogic {
  NotifyLogic() {
    ///
    listaNot.add(
      NotifyItem(
        titulo: " Alerta",
        texto: " Beacon se aproximou!!",
      ),
    );

    ///
    listaNot.add(
      NotifyItem(
        titulo: " Alerta",
        texto: " Beacon se aproximou 222222222!!",
      ),
    );

    ///
    listaNot.add(
      NotifyItem(
        titulo: " Alerta",
        texto: " Beacon se aproximou 333333333333!!",
      ),
    );

    var point;
  }

  List listaNot = List<NotifyItem>();
}
