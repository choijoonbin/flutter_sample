import 'package:flutter/material.dart';
import 'login_app/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase login app',
      home: Login(),
    );
  }
}
