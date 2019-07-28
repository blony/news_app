import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            '消息通知'
          ),
          trailing: Icon(Icons.chevron_right),
        ),
        Divider(height: 0.0,),
        ListTile(
          title: Text(
            '实名认证'
          ),
          trailing: Icon(Icons.chevron_right),
        ),
        Divider(height: 0.0,),
        ListTile(
          title: Text(
            '用户反馈'
          ),
          trailing: Icon(Icons.chevron_right),
        ),
        Divider(height: 0.0,),
        ListTile(
          onTap: (){
            Navigator.pushNamed(context, '/chat');
          },
          title: Text(
            '小智同学'
          ),
          trailing: Icon(Icons.chevron_right),
        ),
        Divider(height: 0.0,),
        ListTile(
          title: Text(
            '系统设置'
          ),
          trailing: Icon(Icons.chevron_right),
        ),
        Divider(height: 0.0,)
        
      ],
    );
  }
}