import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String days = "3rd";

  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
        body: Center(
          child: Text("Welcome to $days day of flutter"),
      ),
      drawer: const Drawer(),
    );
  }
}
