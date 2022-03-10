/*
 Created by DuocNP on 09/03/2022.
 Copyright (c) 2022 . All rights reserved.
*/

import 'package:flutter_redux_login/redux/LoginAction.dart';
import 'package:flutter_redux_login/redux/LoginState.dart';

LoginState loginReducers(LoginState prevState, dynamic action) {

  if(action is LoginAction) {
    return _mapToLoginAction(prevState, action);
  }

  return prevState;
}

LoginState _mapToLoginAction(LoginState prevState, LoginAction action) /*async*/ {
  //Call to api to login
  // return _loginEvent(action.username, action.password);/*.then((value) {
    if(_loginEvent(action.username, action.password)) {
      return LoginState.copyWith(prevState, true, 'duocnguyen6799');
    }

  return LoginState.copyWith(prevState, false, null);
}

 bool _loginEvent(String username, String pw) {
  // await Future.delayed(const Duration(seconds: 3));
  if(username == 'duocnguyen6799' && pw == '123') {
    return true;
  }
  return false;
}