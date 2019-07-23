import 'package:flutter/material.dart';

class CommendContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 15.0),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                  '猜你喜欢'
                  ,style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey
                  ),
                ),
                FlatButton(
                  onPressed: (){},
                  child: Text(
                    '不看',
                    style: TextStyle(
                      color: Colors.blue
                    ),
                    ),
                )
            ],
          ),
        ),
        Column(
          children: <Widget>[
            ListTile(
              
              onTap: (){},
              title: Text(
                '打的费哈酒了快递费',
                style: TextStyle(
                  fontSize: 14.0
                ),
              ),
            ),
            ListTile(
              onTap: (){},
              title: Text(
                '打的费哈酒了快递费',
                style: TextStyle(
                  fontSize: 14.0
                ),
              ),
            ),ListTile(
              onTap: (){},
              title: Text(
                '打的费哈酒了快递费',
                style: TextStyle(
                  fontSize: 14.0
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}