import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(appme());
}

class appme extends StatefulWidget {
  const appme({Key? key}) : super(key: key);

  @override
  _appmeState createState() => _appmeState();
}

class _appmeState extends State<appme> {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              width: 100.0 + random.nextInt(101),
              height: 100.0 + random.nextInt(101),
              color: Color.fromARGB(
                255,
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
