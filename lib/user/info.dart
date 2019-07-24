import 'package:flutter/material.dart';

class UserInfo extends StatefulWidget {
  @override
  _UserInfoState createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 250.0,
      padding: EdgeInsets.only(top: 80.0,left: 20.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    height: 70.0,
                    width: 70.0,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563992936920&di=326accf6a3fa2b0a9979957381f632b5&imgtype=0&src=http%3A%2F%2Fimg1.gtimg.com%2Fdali_house%2Fpics%2Fhv1%2F44%2F254%2F95%2F6242189.jpg'),         
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '全智贤',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(height: 5.0,),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 1.0),  
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5.0)
                            ),
                            child: Text(
                              '申请认证',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 12.0
                            )
                            ,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
               Container(
                 padding: EdgeInsets.all(10.0),
                 decoration: BoxDecoration(
                   color: Color.fromRGBO(0, 0, 0, 0.3),
                   borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(25.0),
                     bottomLeft: Radius.circular(25.0)
                   )
                 ),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.chat,
                      color: Colors.white,
                      ),
                      SizedBox(width: 10.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '今日阅读',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0
                              ),
                            ),
                            Text(
                            '5分钟',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0
                              ),
                            )
                        ],
                      )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 30.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
             Column(
               children: <Widget>[
                 Text(
                   '9',
                   style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0
                    ),
                   ),
                 Text(
                   '动态',
                   style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0
                    ),
                   ),
               ],
             ),
             Column(
               children: <Widget>[
                 Text(
                   '9',
                   style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0
                    ),
                   ),
                 Text(
                   '关注',
                   style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0
                    ),
                   ),
               ],
             ),
             Column(
               children: <Widget>[
                 Text(
                   '8',
                   style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0
                    ),
                   ),
                 Text(
                   '粉丝',
                   style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0
                    ),
                   ),
               ],
             )
            ],
          )
        ],
      ),
    );
  }
}