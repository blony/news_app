//import 'package:adhara_socket_io/adhara_socket_io.dart';
// import 'package:news_app/redux/init.dart';

//SocketIO socket;
// class MsgSocket {
//   static link(store) async{
//     SocketOptions options = 'http://192.168.1.2:7001/' as SocketOptions;
//     socket = await SocketIOManager().createInstance(options);
//     print('正在连接……');
//     socket.onConnect((data){
//       //连接成功
//     });

//     socket.on('news', (data){ // 监听news频道
//         print(data);
//     });

//     socket.on('msg', (data){ // 监听msg频道
//       print(data);
//       store.dispatch(ChatAction(data));
//     });

//     socket.on('msgPrise', (data){
//       print(data);
//       store.dispatch(MessageActionPrise(data));
//     });
    
//     socket.on('msgShare', (data){
//       print(data);
//       store.dispatch(MessageActionShare(data));
//     });
//   } 

//   static sendMsg(msg){
//     socket.emit('message', ['Hello world!']);
//   }
// }