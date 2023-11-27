import 'package:flutter/material.dart';
import 'card.dart';

class Entertaiment_Screen extends StatefulWidget {
  const Entertaiment_Screen({super.key});

  @override
  State<Entertaiment_Screen> createState() => _Entertaiment_ScreenState();
}

class _Entertaiment_ScreenState extends State<Entertaiment_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Giải Trí"),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(16.0)),
          Card_GT(id: 1),
          Card_GT(id: 2)
        ],
      ),
      
    );
  }
}