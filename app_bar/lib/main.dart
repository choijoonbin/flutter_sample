import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Appbar icon menu'),
          centerTitle: true,
          elevation: 0.0,
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                print('shoping_cart button is click');
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('search button is click');
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('joonbin'),
                accountEmail: Text('joonbin@naver.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images.png'),
                  backgroundColor: Colors.white,
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images1.png'),
                    backgroundColor: Colors.white,
                  )
                ],
                onDetailsPressed: () {
                  print('arrow is clicked');
                },
                decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.grey[850],
                ),
                title: Text('HOME'),
                onTap: () {
                  print('Home is clicked');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey[850],
                ),
                title: Text('Setting'),
                onTap: () {
                  print('settings is clicked');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(
                  Icons.question_answer,
                  color: Colors.grey[850],
                ),
                title: Text('Q&A'),
                onTap: () {
                  print('Q&A is clicked');
                },
                trailing: Icon(Icons.add),
              ),
            ],
          ),
        ),

        // SnackBar - 1
        // body: Center(
        //   child: OutlinedButton(
        //     child: Text(
        //       'Show me',
        //       style: TextStyle(color: Colors.red),
        //     ),
        //     onPressed: () {
        //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //         content: Text('Hello'),
        //       ));
        //     },
        //   ),
        // ),
        // SnackBar - 2
        // body: MySnackBar(),

        //tostbar
        body: Center(
          child: OutlinedButton(
            onPressed: () {
              flutterToast();
            },
            child: Text('Toast Btn'),
          ),
        ));
  }
}

void flutterToast() {
  Fluttertoast.showToast(
      msg: 'Flutter Toast',
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.redAccent,
      fontSize: 20.0,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT);
}

class MySnackBar extends StatelessWidget {
  const MySnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
          child: Text('Show me'),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Hello',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.teal,
                duration: Duration(milliseconds: 1000),
              ),
            );
          }),
    );
  }
}
