import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(child: Text('Dice')),
        ),
        body: MyDice(),
      ),
    );
  }
}

class MyDice extends StatefulWidget {
  // const MyDice({Key key}) : super(key: key);

  @override
  _MyDiceState createState() => _MyDiceState();
}

class _MyDiceState extends State<MyDice> {
  @override
  int leftdicenumber=1;
  int rightdicenumber=1;
  void changeDiceFace(){
    setState(() {
      print('Button pressed');
      leftdicenumber=Random().nextInt(6)+1;
      rightdicenumber=Random().nextInt(6)+1;
      print(leftdicenumber);
      print(rightdicenumber);
    });
  }
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                changeDiceFace();
              },
              child:Image.asset('images/dice$leftdicenumber.png')
            )
          ),
          Expanded(
            child:TextButton(
              onPressed:(){
                changeDiceFace();
              },
              child:Image.asset('images/dice$rightdicenumber.png'),
            )
          )
        ],
      ),
    );
  }
}
