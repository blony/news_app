import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
//import 'package:news_app/moudle/msg.dart';
import 'package:news_app/redux/init.dart';


class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          '小智同学'
        ),
      ),
      body: ChatMain(),
    );
  }
}

class ChatMain extends StatefulWidget {
  @override
  _ChatMainState createState() => _ChatMainState();
}

class _ChatMainState extends State<ChatMain> {

  _sendMsg(str){
  //  MsgSocket.sendMsg(str);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: StoreBuilder<AppState>(builder: (context, store){
           // MsgSocket.link(store);
            return ListView(  //ListView不能和其他组件共享区域
              children: store.state.chatList.map((value){
                return Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 40.0,
                        height: 40.0,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563992936920&di=326accf6a3fa2b0a9979957381f632b5&imgtype=0&src=http%3A%2F%2Fimg1.gtimg.com%2Fdali_house%2Fpics%2Fhv1%2F44%2F254%2F95%2F6242189.jpg')
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: Text('你好，世界'),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(224, 239, 251, 1),
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                      )
                    ],
                  ),
                );
              }).toList()
              
              // <Widget>[
              //   Padding(
              //     padding: EdgeInsets.all(15.0),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.end,
              //       children: <Widget>[
              //         Container(
              //           padding: EdgeInsets.all(8.0),
              //           child: Text('你好，世界'),
              //           decoration: BoxDecoration(
              //             color: Color.fromRGBO(224, 239, 251, 1),
              //             borderRadius: BorderRadius.circular(8.0)
              //           ),
              //         ),
              //         SizedBox(width: 10.0,),
              //         SizedBox(
              //           width: 40.0,
              //           height: 40.0,
              //           child: CircleAvatar(
              //             backgroundImage: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563992936920&di=326accf6a3fa2b0a9979957381f632b5&imgtype=0&src=http%3A%2F%2Fimg1.gtimg.com%2Fdali_house%2Fpics%2Fhv1%2F44%2F254%2F95%2F6242189.jpg')
              //           ),
              //         ),
              //       ],
              //     ),
              //   )
              // ],
            );
          })
          
        ),
        Container(
          color: Colors.grey[200],
          padding: EdgeInsets.all(12.0),
          child: Container(
            height: 40.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            child: TextField(
              onSubmitted: (str){
                _sendMsg(str);
              },
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0)
              ),
            ),
          ),
        )
      ],
    );
  }
}