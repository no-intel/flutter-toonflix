import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Hello Flutter!"),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text("Hello world!"),
        ),
      ),
    );
  }
}
