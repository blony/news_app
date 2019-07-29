import 'package:flutter/material.dart';

class ApprovePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('实名认证'),
      ),
      body: Container(
        color: Colors.grey[200],
        child: ListView(
          children: <Widget>[
            ApproveContent()
          ],
        ),
      )
    );
  }
}

class ApproveContent extends StatefulWidget {
  @override
  _ApproveContentState createState() => _ApproveContentState();
}

class _ApproveContentState extends State<ApproveContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              '申请条件',
              style: TextStyle(
                fontWeight: FontWeight.w600
              ),
            ),
          ),
          Divider(height: 0.0,),
          ListTile(
            title: Text(
              '有清晰的头像',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14.0
              ),
            ),
            trailing: Text(
              '已完成',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.blue
              ),
            ),
          ),
          Divider(height: 0.0,),
          ListTile(
            title: Text(
              '有合法用户名',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
              ),
            ),
            trailing: Text(
              '已完成',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 14.0
              ),
            ),
          ),
          Divider(height: 0.0,),
          ListTile(
            title: Text(
              '绑定手机',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
              ),
            ),
            trailing: Text(
              '未完成',
              style: TextStyle(
                color: Colors.red,
                fontSize: 14.0
              ),
            ),
          ),
          Divider(height: 0.0,),
          ListTile(
            title: Text(
              '发布过内容',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
              ),
            ),
            trailing: Text(
              '已完成',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 14.0
              ),
            ),
          ),
        ],
      ),
    );
  }
}