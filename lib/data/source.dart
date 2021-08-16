class Source {
  String id;
  String name;

  Source(this.id, this.name);

  factory Source.fromJson(dynamic json) {
    String id = json['id'];
    String name = json['name'];
    return Source(id, name);
  }
}
