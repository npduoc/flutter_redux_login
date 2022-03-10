/*
 Created by DuocNP on 09/03/2022.
 Copyright (c) 2022 . All rights reserved.
*/
class LoginState {

  late bool isLogin;
  late String userId;

  LoginState({this.isLogin = false, this.userId = ''});

  LoginState.copyWith(LoginState prev, bool login, String? userId) {
    isLogin = login;
    this.userId = userId ?? '';
  }

  // LoginState.initial() {
  //   this.isLogin
  // }
}