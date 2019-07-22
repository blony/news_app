import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Container(
                height: 35.0,
                padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 6.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0)
                ),
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: '请输入关键词',
                    contentPadding: EdgeInsets.all(0.0),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    )
                  ),
                ),
              ),
            ),
            FlatButton(
              onPressed: (){},
              child: Text(
                '取消',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}