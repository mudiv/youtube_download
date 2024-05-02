class DataVideom {
  final String? image;
  final String? title;
  final String? id;

  DataVideom({
    this.image,
    this.title,
    this.id,
  });

  factory DataVideom.fromJson(Map<String, dynamic> json) {
    return DataVideom(
      id: json['id'],
      image: json['image'],
      title: json['title'],
    );
  }
}
