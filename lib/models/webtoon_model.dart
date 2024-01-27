class webtoonModel {
  final String title, thumb, id;
  // webtoonModel(Map<String, dynamic> json)
  webtoonModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}
