import 'package:flutter/material.dart';

/// 顶部搜索框
class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print('点击了搜索');
      },
      child: Container(
      padding: EdgeInsets.symmetric(vertical: 6.0),
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.3),
        borderRadius: BorderRadius.circular(18.0)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.search),
          Text(
            '搜索',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.normal
            ),
          )
        ],
      ),
    ),
    );
  }
}