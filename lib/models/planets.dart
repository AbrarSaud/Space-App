class PlanetsModel {
  int? id;
  String? name;
  String? description;
  String? thumbnail;
  double? size;
  int? distanceFromSun;
  List<String>? images;

  PlanetsModel(
      {this.id,
      this.name,
      this.description,
      this.thumbnail,
      this.size,
      this.distanceFromSun,
      this.images});

  PlanetsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    thumbnail = json['thumbnail'];
    size = json['size'];
    distanceFromSun = json['distanceFromSun'];
    images = json['images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['thumbnail'] = this.thumbnail;
    data['size'] = this.size;
    data['distanceFromSun'] = this.distanceFromSun;
    data['images'] = this.images;
    return data;
  }
}
