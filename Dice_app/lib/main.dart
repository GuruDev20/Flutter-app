import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Dicee"),
          backgroundColor: Colors.black,
        ),
        body: const DicePage(),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left=1;
  int right=1;
  void changeDice(){
    setState(() {
      left=Random().nextInt(6)+1;
      right=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){changeDice();},
              child: Image.asset('assets/dice$left.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: (){changeDice();},
              child: Image.asset('assets/dice$right.png'),
            ),
          ),
        ],
      ),
    );
  }
}
