import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First APP"),
        centerTitle: true,
        elevation: 10,
      ),
      body: Container(color: Colors.greenAccent),
    );
  }
}
