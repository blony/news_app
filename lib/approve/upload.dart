import 'package:flutter/material.dart';

class ImageUpload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('身份认证'),
      ),
      body: Container(
        color: Colors.grey[200],
        child: ListView(
          children: <Widget>[
            InputBox(),
            ImageLoad()
          ],
        ),
      )
    );
  }
}

class InputBox extends StatefulWidget {
  @override
  _InputBoxState createState() => _InputBoxState();
}

class _InputBoxState extends State<InputBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: '真实姓名',
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0
                )
              ),
              onChanged: (str){
                //操作
              },
            ),
          ),
          Divider(height: 0.0,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: '合法的用户名',
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0
                )
              ),
            ),
          ),
          Divider(height: 0.0,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: '所在行业',
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0
                )
              ),
            ),
          ),
          Divider(height: 0.0,),
        ],
      ),
    );
  }
}

class ImageLoad extends StatefulWidget {
  @override
  _ImageLoadState createState() => _ImageLoadState();
}

class _ImageLoadState extends State<ImageLoad> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10.0,top: 10.0,bottom: 10.0),
            child: Text(
            '上传身份证明'
            ),
          ),
          Divider(height: 0.0,),
          SizedBox(height: 10.0,),
          Row(
            children: <Widget>[
              SizedBox(width: 10.0,),
              Expanded(
                child: GestureDetector(
                  onTap: (){

                  },
                  child: Image.asset('images/IDcard1.png'),
                ),
              ),
              SizedBox(width: 15.0,),
               Expanded(
                child: GestureDetector(
                  onTap: (){

                  },
                  child: Image.asset('images/IDcard2.png'),
                ),
              ),
              SizedBox(width: 10.0,)
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: (){
                
              },
              child: Image.asset('images/IDcard3.png'),
            ),
          )
        ],
      ),
    );
  }
}