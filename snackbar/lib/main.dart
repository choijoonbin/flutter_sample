import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          child: Text(
            'Show me',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            print('Show me Click');
          },
        ),
      ),
    );
  }
}

// final ButtonStyle flatButtonStyle = TextButton.styleFrom(
//   foregroundColor: Colors.black87,
//   minimumSize: Size(88, 36),
//   padding: EdgeInsets.symmetric(horizontal: 16.0),
//   shape: const RoundedRectangleBorder(
//     borderRadius: BorderRadius.all(Radius.circular(2.0)),
//   ),
// );
