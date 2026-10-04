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
      body: Center(
        child: Container(
          height: 200,
          width: 200,

          color: Colors.greenAccent,
          child: Text("This is a container"),
        ),
      ),

      drawer: Drawer(backgroundColor: Colors.amber),
    );
  }
}
