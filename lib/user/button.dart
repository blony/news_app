import 'package:flutter/material.dart';
import 'package:news_app/user/collect/collect.dart';

class UserBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: <Widget>[
          PubBtn(Icons.star_border, Colors.red ,'收藏'),
          PubBtn(Icons.access_time, Colors.orange,'历史'),
          PubBtn(Icons.library_books, Colors.blue ,'作品')
        ],
      )
    );
  }
}

class PubBtn extends StatelessWidget {
  final IconData icon;
  final  color;
  final String str;
  PubBtn(this.icon, this.color ,this.str);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){
          if (str == '历史' || str == '收藏') {
            // Navigator.pushNamed(context, '/collect');
            // 路由跳转，传参
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => CollectPage(str)
            ));
          } else {
             Navigator.pushNamed(context, '/works');
          }
        },
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              size: 34.0,
              color: color,
              ),
            SizedBox(height: 5.0,),
            Text(
              str,
              style: TextStyle(
                fontSize: 18.0
              ),
              )
          ],
        ),
      )
    );
  }
}