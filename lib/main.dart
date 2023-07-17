import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(magic_8_ball());
}

class magic_8_ball extends StatefulWidget {
  const magic_8_ball({super.key});

  @override
  State<magic_8_ball> createState() => _magic_8_ballState();
}

class _magic_8_ballState extends State<magic_8_ball> {
  int n = 1;
  void magic() {
    n = Random().nextInt(4) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Center(
            child: Text('Ask Me Anything'),
          ),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      magic();
                    });
                  },
                  child: Image(
                    image: AssetImage('images/ball$n.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
        /*Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                magic();
              });
            },
            child: Image(
              image: AssetImage('images/ball1.png'),
              height: 100,
              width: 100,
            ),
          ),
        ),*/
      ),
    );
  }
}
