import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:news_app/moudle/pub.dart';

class ImageUpload extends StatelessWidget {
   Widget tapButton(context){
    return Container(
      margin: EdgeInsets.only(top: 25.0,left: 15.0,right: 15.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(6.0)
      ),
      child: FlatButton(
        onPressed: (){
          // Navigator.pushNamed(context, '/imageupload');
        },
        child: Text(
          '下一步',
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
        title: Text('身份认证'),
      ),
      body: Container(
        color: Colors.grey[200],
        child: ListView(
          children: <Widget>[
            InputBox(),
            ImageLoad(),
            tapButton(context)
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

  File _image_f;
  File _image_b;
  File _image_a;

  //图片上传
  _uploadImage(File image , name) async{
    FormData imageForm = FormData.from({
      'image':UploadFileInfo(image,'$name')
    });
    var result = await PubMoudle.httpRequest('post', '/uploadImage',imageForm);
    print(result);
  }

  _getImage(type) async{
   File _getImage = await ImagePicker.pickImage(source: ImageSource.gallery);
   switch (type) {
     case 'f':
        setState(() {
          _image_f = _getImage;
        });
     break;
     case 'b':
      setState(() {
            _image_b = _getImage;
          });
     break;
     case 'a':
      setState(() {
            _image_a = _getImage;
          });
     break;
   }
   
  }

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
                child:SizedBox(
                  child:  GestureDetector(
                    onTap: (){
                      _getImage('f');
                    },
                    child: _image_f == null? Image.asset('images/IDcard1.png') : Image.file(_image_f),
                  ),
                )
              ),
              SizedBox(width: 15.0,),
               Expanded(
                child: GestureDetector(
                  onTap: (){
                    _getImage('b');
                  },
                  child: _image_b == null? Image.asset('images/IDcard2.png') : Image.file(_image_b),
                ),
              ),
              SizedBox(width: 10.0,)
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: (){
                 _getImage('a');
              },
              child: _image_a == null? Image.asset('images/IDcard3.png') : Image.file(_image_a),
            ),
          )
        ],
      ),
    );
  }
}