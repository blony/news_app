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
          ),
           Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 5.0),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('清除缓存'),
                  trailing: Text('12M'),
                ),
                Divider(height: 0.0,),
                ListTile(
                  title: Text('字体大小'),
                  trailing: Text('中'),
                ),
                Divider(height: 0.0,),
                ListTile(
                  title: Text('推送通知'),
                  trailing: Switch(
                    onChanged: (value){
                      print(value);
                    },
                    value: false,
                  ),
                ),
                Divider(height: 0.0,)
              ],
            ),
          ),
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 30.0),
            child: FlatButton(
              onPressed: (){
                Navigator.pushNamed(context, '/login');
              },
              child: Text(
                '退出登录',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16.0
                ),
                ),
            ),
          )
        ],
      ),
    );
  }
}