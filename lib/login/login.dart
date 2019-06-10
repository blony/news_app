import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.grey[100],
        child: FormRegist()
      ),
    );

  }
}

class FormRegist extends StatefulWidget {
  @override
  _FormRegistState createState() => _FormRegistState();
}

class _FormRegistState extends State<FormRegist> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.mobile_screen_share,
                color:Colors.grey
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black12
                )
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black12
                )
              ),
              hintText: '请输入手机号',
              hintStyle: TextStyle(
                color: Colors.black38,
                fontSize: 14.0
              )
            ),
            onChanged: (value){},
            onSubmitted: (value){},
          ),
        ),
        Container(
          color: Colors.white,
          child:Row(
            children: <Widget>[
              Expanded(
                child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
            child: TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color:Colors.grey
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide.none
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide.none
                ),
                hintText: '请输入验证码',
                hintStyle: TextStyle(
                  color: Colors.black38,
                  fontSize: 14.0
                )
              ),
              onChanged: (value){},
              onSubmitted: (value){},
            ),
          ) ,
              ),
              Container(
                width: 100.0,
                height: 30.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(237, 237, 237, 1),
                  borderRadius: BorderRadius.circular(120.0)
                ),
                child: Text('获取验证码'),
              ),
              SizedBox(
                width: 10.0,
              )
            ],
          ),
        ),
        Container(
          height: 40.0,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          margin: EdgeInsets.only(top: 20.0),
          child: RaisedButton(
            color: Colors.blue,
            disabledColor: Colors.blue,
            onPressed: (){

            },
            child: Text(
              '登录',
              style: TextStyle(
                color: Colors.white
              ),
            ),
           // disabledColor: Colors.blue[200],
            elevation: 0.0,
          ),
          )
      ],
    );
  }
}