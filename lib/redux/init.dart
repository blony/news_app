import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

class AppState {
  String token;
  ThemeData themeData;
  List chatList;
  List msgList;
  AppState({this.token, this.themeData, this.chatList, this.msgList});
}

AppState appReducer(state, action){
    return AppState(
      token: updateToken(state.token, action),
      themeData: updateTheme(state.themeData, action),
      chatList: updateChat(state.chatList, action),
      msgList: getMsgList(state.msgList, action)
    );
}

final updateToken = combineReducers<String>([
  TypedReducer<String, TokenAction>(_refreshToken)
]);

String _refreshToken (String token, action){
  token = action.token;
    return token;
}

class TokenAction {
  final token;
  TokenAction(this.token);
}

final updateTheme = combineReducers<ThemeData>([
  TypedReducer<ThemeData, ThemeAction>(_refreshTheme)
]);
ThemeData _refreshTheme(ThemeData themeData, action){
  themeData = action.theme;
  return themeData;
}

class ThemeAction {
  final ThemeData theme;
  ThemeAction(this.theme);
}

final updateChat = combineReducers<List>([
  TypedReducer<List, ChatAction>(_addChat)
]);

List _addChat(List chatList, action){
  chatList.insert(0, action.chatlist);
  return chatList;
}

class ChatAction {
   List chatlist;
   ChatAction(this.chatlist);
}

final getMsgList = combineReducers<List>([
  TypedReducer<List, MessageActionPrise>(_msgPrise),
  TypedReducer<List, MessageActionShare>(_msgShare),
]);

// 点赞信息
List _msgPrise(List msgList, action){
   msgList.insert(0, action.msg);
   return msgList;
}
class MessageActionPrise {
  final String msg;
  MessageActionPrise(this.msg);
}

// 分享信息
List _msgShare(List msgList, action){
   msgList.insert(0, action.msg);
   return msgList;
}
class MessageActionShare {
  final String msg;
  MessageActionShare(this.msg);
}