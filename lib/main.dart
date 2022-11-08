import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[600],
        appBar: AppBar(
          backgroundColor: Colors.red[600],
          centerTitle: true,
          title: const Text(
            'Dicee'
          ),
        ),
        body: App()
      ),
    )
  );
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int leftDice = 1;
  int rightDice = 1;

  void haveChance() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.all(16.0)
                ),
                onPressed: () {haveChance();},
                child: Image.asset('images/dice$leftDice.png'),
              )
          ),
          Expanded(
            child: TextButton(
                onPressed: () {haveChance();},
                style: TextButton.styleFrom(
                    padding: EdgeInsets.all(16.0)
                ),
                child: Image.asset('images/dice$rightDice.png')
            ),
          ),
        ],
      ),
    );
  }
}


