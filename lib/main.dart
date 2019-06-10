import 'package:flutter/material.dart';

import 'login/login.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '智慧头条',
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}