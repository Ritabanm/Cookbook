import 'package:flutter/material.dart';
class topDish extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.amber,

        title: Text("Top Dishes"),
        centerTitle: true,
      ),
      backgroundColor: Colors.orangeAccent,
    );
  }
}
