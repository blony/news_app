import 'package:flutter/material.dart';

class ShareSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Text('微信'),
              ],
           ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Text('朋友圈'),
              ],
           ),
          ),
           Expanded(
            child: Column(
              children: <Widget>[
                Text('微博'),
              ],
           ),
          ),
           Expanded(
            child: Column(
              children: <Widget>[
                Text('QQ'),
              ],
           ),
          )
        ],
      ),
    );
  }
}