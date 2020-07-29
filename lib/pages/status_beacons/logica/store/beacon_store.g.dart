// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beacon_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BeaconStore on _BeaconStore, Store {
  final _$statusAlcanceAtom = Atom(name: '_BeaconStore.statusAlcance');

  @override
  String get statusAlcance {
    _$statusAlcanceAtom.reportRead();
    return super.statusAlcance;
  }

  @override
  set statusAlcance(String value) {
    _$statusAlcanceAtom.reportWrite(value, super.statusAlcance, () {
      super.statusAlcance = value;
    });
  }

  final _$_BeaconStoreActionController = ActionController(name: '_BeaconStore');

  @override
  void setStatusBeacon(dynamic valor) {
    final _$actionInfo = _$_BeaconStoreActionController.startAction(
        name: '_BeaconStore.setStatusBeacon');
    try {
      return super.setStatusBeacon(valor);
    } finally {
      _$_BeaconStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
statusAlcance: ${statusAlcance}
    ''';
  }
}
