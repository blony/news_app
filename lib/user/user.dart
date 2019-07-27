import 'package:flutter/material.dart';
import 'package:news_app/user/button.dart';
import 'package:news_app/user/info.dart';
import 'package:news_app/user/list.dart';

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          UserInfo(),
          UserBtn(),
          UserList()
        ],
      )
    );
  }
}