import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:news_app/approve/approve.dart';
import 'package:news_app/chat/chat.dart';
import 'package:news_app/moudle/pub.dart';
import 'package:news_app/redux/init.dart';
import 'package:news_app/search/search_page.dart';
import 'package:news_app/user/collect/collect.dart';
import 'approve/upload.dart';
import 'home/home.dart';
import 'login/login.dart';
import 'package:redux/redux.dart';

void main(List<String> args) {
  PubMoudle.checkUser().then((value){
    runApp(App(value));
  });
}

class App extends StatelessWidget {
  final String token;
  App(this.token);

  final store = new Store <AppState>(
    appReducer,
    initialState: AppState(
      themeData: ThemeData(
        primaryColor: Colors.blue
      )
    )
  );
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: StoreBuilder<AppState>(
        builder: (context, store){
          return MaterialApp(
            title: '智慧头条',
            home: token!=null?Home():LoginPage(),
            // home: LoginPage(),
            debugShowCheckedModeBanner: false,
            theme: store.state.themeData,
            routes: {
              '/home':(context) => Home(),
              '/login':(context) => LoginPage(),
              '/search':(context) => SearchPage(),
              '/chat':(context) => ChatPage(),
              'approve':(context) => ApprovePage(),
              '/imageupload':(context) => ImageUpload(),
              '/collect':(context) => CollectPage()
            },
          );
        },
      )
    );
  }
}