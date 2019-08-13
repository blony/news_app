import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          '消息'
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 40.0,
                      height: 40.0,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563992936920&di=326accf6a3fa2b0a9979957381f632b5&imgtype=0&src=http%3A%2F%2Fimg1.gtimg.com%2Fdali_house%2Fpics%2Fhv1%2F44%2F254%2F95%2F6242189.jpg'),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Text(
                      '金城武'
                    ),
                    SizedBox(width: 5.0,),
                    Text(
                      '关注了我',
                      style: TextStyle(
                        color: Colors.blue
                      ),
                    )
                  ],
                ),
              Padding(
                padding: EdgeInsets.only(left: 50.0),
                child:Text(
                  '2019-06-07',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey
                  ),
                  ),
              )
              ],
            ),
          ),
          Divider(height: 0.0,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 40.0,
                      height: 40.0,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563992936920&di=326accf6a3fa2b0a9979957381f632b5&imgtype=0&src=http%3A%2F%2Fimg1.gtimg.com%2Fdali_house%2Fpics%2Fhv1%2F44%2F254%2F95%2F6242189.jpg'),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Text(
                      '金城武 转载了'
                    ),
                    SizedBox(width: 5.0,),
                    Text(
                      '《我的野蛮女友》',
                      style: TextStyle(
                        color: Colors.blue
                      ),
                    )
                  ],
                ),
              Padding(
                padding: EdgeInsets.only(left: 50.0),
                child:Text(
                  '2019-06-07',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey
                  ),
                  ),
              )
              ],
            ),
          ),
        ],
      ),
    );
  }
}