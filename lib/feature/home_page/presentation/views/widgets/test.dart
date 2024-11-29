import 'package:flutter/material.dart';
class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 300,
            height: 300,
            color: Colors.teal,)
        ],
      ),
    );
  }
}
