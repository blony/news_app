class Article {
  int artId;
  String title;
  int autId;
  String autName;
  int commCount;
  String pubDate;
  int isTop;
  int imgType;
  List images;

  Article.fromJson(json){
    artId = json['art_id'];
    title = json['title'];
    autId = json['aut_id'];
    autName = json['aut_name'];
    commCount = json['comm_count'];
    pubDate = json['pubdate'];
    isTop = json['is_top'];
    imgType = json['cover']['type'];
    images = json['cover']['images'];
  }
}