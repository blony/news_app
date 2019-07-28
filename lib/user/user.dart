import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:news_app/redux/init.dart';
import 'package:news_app/user/button.dart';
import 'package:news_app/user/info.dart';
import 'package:news_app/user/list.dart';

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreBuilder<AppState>(
      builder: (context, store){
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              ThemeData theme = ThemeData(primaryColor: Colors.red);
              store.dispatch(ThemeAction(theme));
            },
          ),
          body: Column(
            children: <Widget>[
              UserInfo(),
              UserBtn(),
              UserList()
            ],
          )
        );
      },
    );
  }
}