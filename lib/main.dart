import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Hey, Selena",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    Text("Welcom back",
                      style: TextStyle(
                        color: Colors.white.withAlpha(127),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Column(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
