/*
 Created by DuocNP on 09/03/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_login/redux/LoginAction.dart';
import 'package:flutter_redux_login/redux/LoginState.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                hintText: 'Username'
              ),),
          const SizedBox(height: 20,),
          TextField(
              controller: _pwController,
              decoration: const InputDecoration(
                hintText: 'Password'
              ),
            ),
          const SizedBox(height: 20,),
          StoreConnector<LoginState, LoginState>(
            converter: (store) => store.state,
            builder: (context, state) =>
              MaterialButton(
                onPressed: () {
                  StoreProvider.of<LoginState>(context).dispatch(LoginAction(username: _usernameController.text, password: _pwController.text));
                },
              color: Colors.blue,
              child: Text('Login', style: Theme.of(context).textTheme.bodyText1,),
              ),
          ),
        const SizedBox(height: 10,),
        StoreConnector<LoginState, LoginState>(
          converter: (store) => store.state,
          builder: (context, state) {
            return Center(child: Text('Login ${state.isLogin}'),);
          })
          ],
        ),
      ),
    );
  }
}
