import 'package:mobx/mobx.dart';
part 'beacon_store.g.dart';

class BeaconStore = _BeaconStore with _$BeaconStore;

abstract class _BeaconStore with Store {
  //======================================================= OBSERVABLES =====================================================

  @observable
  var statusAlcance = "afastado";

  //========================================================= ACTIONS =======================================================

  @action
  void setStatusBeacon(valor) {
    statusAlcance = valor;
  }
}
