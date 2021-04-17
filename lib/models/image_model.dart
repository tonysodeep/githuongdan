class ImgaeModel {
  int id;
  String url;
  String title;

  ImgaeModel({this.id, this.url, this.title});
  ImgaeModel.fromJson(Map<String,dynamic> parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }
}
