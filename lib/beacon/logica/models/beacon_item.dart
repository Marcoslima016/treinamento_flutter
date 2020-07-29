class BeaconItem {
  int id;
  String uuid;
  int status;
  int timestamp;

  BeaconItem({this.id, this.uuid, this.status, this.timestamp});

  BeaconItem.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uuid = json['uuid'];
    status = json['status'];
    timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uuid'] = this.uuid;
    data['status'] = this.status;
    data['timestamp'] = this.timestamp;
    return data;
  }
}
