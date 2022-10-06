import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home:MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Text('Con1'),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Container(
                  color: Colors.blue,
                  height: 100,
                  child: Text('Con2'),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Container(
                  color: Colors.red,
                  height: 100,
                  child: Text('Con3'),
                ),
                // Container(
                //   width: double.infinity,
                //   height: 20,
                // )
              ],
            ),
      ),
    );
  }
  //
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: Colors.teal,
  //     body: SafeArea(
  //       child: Center(
  //         child: Column(
  //           // mainAxisAlignment: MainAxisAlignment.center,
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Container(
  //               color: Colors.white,
  //               width: 100,
  //               height: 100,
  //               child: Text('Con1'),
  //             ),
  //             Container(
  //               color: Colors.blue,
  //               width: 100,
  //               height: 100,
  //               child: Text('Con2'),
  //             ),
  //             Container(
  //               color: Colors.red,
  //               width: 100,
  //               height: 100,
  //               child: Text('Con3'),
  //             ),
  //           ],
  //         ),
  //       )
  //     ),
  //   );
  // }
}

