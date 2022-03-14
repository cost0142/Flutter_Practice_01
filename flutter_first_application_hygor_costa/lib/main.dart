import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(title: Text("Transfers"),),
    floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Color.fromARGB(255, 40, 182, 193),
        child: const Icon(Icons.navigation),
    ),
  ),
));
