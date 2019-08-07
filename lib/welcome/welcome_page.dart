import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  final String token;
  WelcomePage(this.token);
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

_delaydHome(){
  Future.delayed(Duration(seconds: 3),(){
    if (widget.token != null) {
      Navigator.pushNamed(context, '/home');
    }else{
      Navigator.pushNamed(context, '/login');
    }
  });
}

  @override
  void initState() {
    super.initState();
    _delaydHome();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'images/splash.png',
        fit: BoxFit.cover,
      ),
    );
  }
}