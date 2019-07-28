import 'package:redux/redux.dart';

class AppState {
  String token;
  int nums;

  AppState({this.token});
}

AppState appReducer(state, action){
    return AppState(
      token: updateToken(state.token, action)
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