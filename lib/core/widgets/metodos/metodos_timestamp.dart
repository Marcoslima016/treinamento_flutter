//

Future getAtualTs() async {
  ///
  var hrAtual = new DateTime.now().millisecondsSinceEpoch;
  var timeStampAtual = hrAtual ~/ 1000;

  return timeStampAtual;
}

//
Future compareTs(timeStampTarget) async {
  var hrAtual = new DateTime.now().millisecondsSinceEpoch;
  var timeStampAtual = hrAtual ~/ 1000;

  var difTs = timeStampAtual - timeStampTarget;

  return difTs;
}
