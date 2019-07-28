import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

class AppState {
  String token;
  ThemeData themeData;

  AppState({this.token, this.themeData});
}

AppState appReducer(state, action){
    return AppState(
      token: updateToken(state.token, action),
      themeData: updateTheme(state.themeData, action)
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