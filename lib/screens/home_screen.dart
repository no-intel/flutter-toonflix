import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          centerTitle: true,
          elevation: 10,
          backgroundColor: Colors.white,
          foregroundColor: Colors.green,
          title: Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              "오늘의 웹툰",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
