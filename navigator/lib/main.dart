import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context2) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First page'),
      ),
      body: Center(
        child: OutlinedButton(
            child: Text('Go to the Second page'),
            // onPressed: (){
            //   Navigator.push(
            //       context2,
            //       MaterialPageRoute(
            //           builder: (BuildContext context){
            //             return SecondPage();
            //           }
            //       ));
            // }
          onPressed: (){
              Navigator.push(context2, MaterialPageRoute(
                  builder: (_)=>SecondPage()));
           },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
      ),
      body: Center(
        child: TextButton(
          child: Text('Go to the First page'),
          onPressed: (){
          Navigator.pop(ctx);
          },
        ),
      ),
    );
  }
}
