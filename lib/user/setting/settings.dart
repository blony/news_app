import 'package:flutter/material.dart';

class SysSet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('系统设置'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('编辑资料'),
                  trailing: Icon(Icons.chevron_right),
                ),
                Divider(height: 0.0,),
                ListTile(
                  title: Text('账号隐私'),
                  trailing: Icon(Icons.chevron_right),
                ),
                Divider(height: 0.0,),
                ListTile(
                  title: Text('黑名单'),
                  trailing: Icon(Icons.chevron_right),
                ),
                Divider(height: 0.0,)
              ],
            ),
          )
        ],
      ),
    );
  }
}