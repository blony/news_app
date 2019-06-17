import 'package:flutter/material.dart';
import 'package:news_app/moudle/pub.dart';
import 'home/home.dart';
import 'login/login.dart';

void main(List<String> args) {
  PubMoudle.checkUser().then((value){
    runApp(App(value));
  });
}

class App extends StatelessWidget {
  final String token;
  App(this.token);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '智慧头条',
      // home: token!=null?Home():LoginPage(),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home':(context) => Home(),
        '/login':(context) => LoginPage()
      },
    );
  }
}