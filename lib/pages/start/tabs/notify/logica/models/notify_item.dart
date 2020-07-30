class NotifyItem {
  String id;
  String texto;
  String titulo;
  String dthr;
  bool badgeSt;

  NotifyItem({this.id, this.texto, this.titulo, this.dthr, this.badgeSt});

  NotifyItem.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    texto = json['texto'];
    titulo = json['titulo'];
    dthr = json['dthr'];
    badgeSt = json['badge_st'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['texto'] = this.texto;
    data['titulo'] = this.titulo;
    data['dthr'] = this.dthr;
    data['badge_st'] = this.badgeSt;
    return data;
  }
}
