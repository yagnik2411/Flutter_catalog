import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String days = "first";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
        body: Center(
          child: Container(
            child: Text("Welcome to $days day of flutter"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
