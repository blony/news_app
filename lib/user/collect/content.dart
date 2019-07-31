import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CollectContent extends StatelessWidget {
  final String text;
  CollectContent(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.0),
            padding: EdgeInsets.all(10.0),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'sdf    sdfsdf  sdfsd  f',
                  style: TextStyle(
                    fontSize: 20.0
                  ),
                ),
                SizedBox(height: 10.0,),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: CachedNetworkImage(
                         imageUrl: "http://via.placeholder.com/350x200",
                         placeholder: (context, url) => new CircularProgressIndicator(),
                         errorWidget: (context, url, error) => new Icon(Icons.error),
                      ),
                    ),
                    Expanded(
                      child: CachedNetworkImage(
                         imageUrl: "http://via.placeholder.com/350x200",
                         placeholder: (context, url) => new CircularProgressIndicator(),
                         errorWidget: (context, url, error) => new Icon(Icons.error),
                      ),
                    ),
                    Expanded(
                      child: CachedNetworkImage(
                         imageUrl: "http://via.placeholder.com/350x200",
                         placeholder: (context, url) => new CircularProgressIndicator(),
                         errorWidget: (context, url, error) => new Icon(Icons.error),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0,),
                Text('Hstudio 2019-08-08'),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton.icon(
                        onPressed: (){

                        },
                        icon:Icon(Icons.chat_bubble_outline),
                        label: Text('评论'),
                        elevation: 0.0,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: RaisedButton.icon(
                        onPressed: (){

                        },
                        icon:Icon(Icons.thumb_up),
                        label: Text('点赞'),
                        elevation: 0.0,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: RaisedButton.icon(
                        onPressed: (){

                        },
                        icon:Icon(Icons.favorite_border),
                        label: Text('收藏'),
                        elevation: 0.0,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      )
    );
  }
}