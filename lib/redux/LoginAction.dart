/*
 Created by DuocNP on 09/03/2022.
 Copyright (c) 2022 . All rights reserved.
*/
abstract class Action {}

class LoginAction extends Action {
  final String username;
  final String password;

  LoginAction({required this.username, required this.password});
}
