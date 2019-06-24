import 'package:flutter/material.dart';
import 'package:news_app/moudle/pub.dart';
import 'package:news_app/news/module/article.dart';
import 'package:timeago/timeago.dart' as timeago;

class TabBarContent extends StatefulWidget {
  final int id;
  TabBarContent(this.id);
  @override
  _TabBarContentState createState() => _TabBarContentState();
}

class _TabBarContentState extends State<TabBarContent> {

  List<Article> _list = [];
  int page = 1;
  ScrollController _controller = ScrollController();

  _getData([type]) async{
  var data = await PubMoudle.httpRequest('post', '/getartcles',{'id':widget.id,'page':page});
  // print(data.data['data']['results']);
  List jsonList = data.data['data']['results'];
  List<Article> listData = jsonList.map((value)=> Article.fromJson(value)).toList();

  if (type == 1) {
    setState(() {
      _list.addAll(listData);
    });
  }else {
    setState(() {
      _list = listData;
    });
  }
  
  }
  
  // 刷新逻辑
  Future _refresh() async{
    _getData();
  }

  @override
  void initState() {
    super.initState();
    _getData();
    _controller.addListener((){
      var maxScroll = _controller.position.maxScrollExtent;
      var pixels = _controller.position.pixels;
      if (maxScroll == pixels) {
       _getData(1);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator( //刷新组件
      onRefresh: _refresh,
      child: Padding(
      padding: EdgeInsets.all(15.0),
        child: ListView.builder(
          itemCount: _list.length,
          itemBuilder: (context,index){
            return NewsItem(_list[index]);
          },
          controller: _controller,
        )
      ),
    );
  }
}
class NewsItem extends StatelessWidget {
  final Article article;
  NewsItem(this.article);
  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            article.imgType ==1 ?Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Text(
                  article.title,
                  style: TextStyle(
                    color:Colors.black,
                    fontSize: 16.0
                  )
                 ),
                ),
                SizedBox(
                  width: 100.0,
                  height: 100.0,
                  child: Image.network(article.images[0],
                      fit: BoxFit.cover,
                      ),
                )
              ],
            ) : Text(
              article.title,
              style: TextStyle(
                color:Colors.black,
                fontSize: 16.0
              )
            ),
            SizedBox(height: 10.0,),
           article.imgType == 3? Row(
              children: article.images.map((value){
                  return Expanded(
                  child: AspectRatio(
                    aspectRatio: 4/3,
                    child: Image.network(value,
                      fit: BoxFit.cover,
                      ),
                  )
                );
              }).toList()
            ):SizedBox(),
            SizedBox(height: 5.0,),
            RichText(
              text: TextSpan(
                text: '${article.isTop == 1?"置顶  ":""}',
                style: TextStyle(
                  color: Colors.red
                  ),
                children: [
                  TextSpan(
                    text: '${article.autName+"  "}',
                    style: TextStyle(
                    color: Colors.grey
                    ),
                  ),
                  TextSpan(
                    text: '${article.commCount}评论  ',
                    style: TextStyle(
                    color: Colors.grey
                    ),
                  ),
                  TextSpan(
                    text: timeago.format(DateTime.parse(article.pubDate),locale:'zh_CN'),
                    style: TextStyle(
                    color: Colors.grey
                    ),
                  )
                ]
              ),
            ),
            Divider(height: 30.0,),
          ],
        );
  }
}