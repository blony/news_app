import 'package:flutter/material.dart';

class ApprovePage extends StatelessWidget {

  // 认证特选Widget
  Widget prerogative(){
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              '认证特权'
            ),
          ),
          Divider(height: 0.0,),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue[100],
              child: Icon(Icons.star_border),
            ),
            title: Text(
              '独家标识'
            ),
            subtitle: Text(
              '享有独家标识，彰显独特身份'
            ),
          ),
          Divider(height: 0.0,),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue[100],
              child: Icon(Icons.star_border),
            ),
            title: Text(
              '优先推荐'
            ),
            subtitle: Text(
              '内容优先推荐，增加曝光快速涨粉'
            ),
          ),
          Divider(height: 0.0,),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue[100],
              child: Icon(Icons.star_border),
            ),
            title: Text(
              '更多特权'
            ),
            subtitle: Text(
              '更多认证用户专享功能'
            ),
          ),
          Divider(height: 0.0,)
        ],
      ),
    );
  }

  Widget tapButton(context){
    return Container(
      margin: EdgeInsets.only(top: 25.0,left: 15.0,right: 15.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(6.0)
      ),
      child: FlatButton(
        onPressed: (){
          Navigator.pushNamed(context, '/imageupload');
        },
        child: Text(
          '申请身份认证',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.normal
          ),
        ),
      ),
    );
  }
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
            ApproveContent(),
            Divider(height: 10.0,),
            prerogative(),
            tapButton(context)
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