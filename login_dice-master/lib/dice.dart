import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1;
  int rightDice = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Dice game'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(32.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    // flex: 2,
                    child: Image.asset('image/dice$leftDice.png')),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                    // flex:1,
                    child: Image.asset('image/dice$rightDice.png')),
                // Image(
                //   image: AssetImage('image/dice1.png'),
                //   width: 300.0,
                // )
              ],
            ),
          ),
          SizedBox(
            width: 60.0,
          ),
          ButtonTheme(
            minWidth: 100.0,
            height: 60.0,
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    leftDice = Random().nextInt(6) + 1;
                    rightDice = Random().nextInt(6) + 1;
                  });
                  showToast("Left dice: {$leftDice}, Right dice: {$rightDice}");
                },
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                )),
          ),
        ],
      )),
    );
  }
}

void showToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.blue,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM);
}
