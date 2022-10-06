import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenA'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              child: Text('Go to ScreenB'),
              onPressed: (){
              },
            ),
            OutlinedButton(
              child: Text('Go to ScreenC'),
              onPressed: (){
              },
            )
          ],
        ),
      )
    );
  }
}
