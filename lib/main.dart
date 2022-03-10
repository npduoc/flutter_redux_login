import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_login/redux/LoginState.dart';
import 'package:flutter_redux_login/redux/reducers.dart';
import 'package:flutter_redux_login/screen/login_page.dart';
import 'package:redux/redux.dart';

void main() {
  // Store<LoginState> loginStore = Store<LoginState>(loginReducers, initialState: LoginState());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StoreProvider<LoginState>(
        store: Store<LoginState>(loginReducers, initialState: LoginState()),
        child: const LoginPage(),
      )
    );
  }
}
