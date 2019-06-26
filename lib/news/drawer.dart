import 'package:flutter/material.dart';

class DrawerList  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0.0),
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue
            ),
            child: Center(
              child: SizedBox(
                width: 60.0,
                height: 60.0,
                child: CircleAvatar(
                  child: Text('Bobby'),
                ),
              ),
            ),
          ),
          ListTile(
            title: Text(
              '我的频道',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal
              ),
              ),
              trailing: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 1.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red
                  ),
                  borderRadius: BorderRadius.circular(15.0)
                ),
                child: Text(
                  '编辑',
                  style: TextStyle(
                    color: Colors.red
                  ),
                ),
              ),
          ),
          ListTile(
            title: Text(
              '频道推荐',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal
              ),
            ),
          )
        ],
      ),
    );
  }
}