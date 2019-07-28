// import 'package:adhara_socket_io/adhara_socket_io.dart';

// SocketIO socket;
// class MsgSocket {
//   static link() async{
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
//     });
//   } 

//   static sendMsg(msg){
//     socket.emit('message', ['Hello world!']);
//   }
// }