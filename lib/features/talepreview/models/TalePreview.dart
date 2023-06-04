class TalePreview {
  TalePreview({
      required this.id,
      required this.title,
      required this.subtitle,
      required this.grades,
      required this.icon,
      required this.author,});

  TalePreview.fromJson(dynamic json) {
    id = json['id'].toString();
    title = json['title'].toString();
    subtitle = json['subtitle'].toString();
    grades = json['grades'] != null ? (json['grades'] as List<dynamic>).cast<int>() : [];
    icon = json['icon'].toString();
    author = json['author'].toString();
  }
  late String id;
  late String title;
  late String subtitle;
  late List<int> grades;
  late String icon;
  late String author;
  late bool isReads = false;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['subtitle'] = subtitle;
    map['grades'] = grades;
    map['icon'] = icon;
    map['author'] = author;
    return map;
  }

}