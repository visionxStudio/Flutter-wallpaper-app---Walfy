import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text("Change the theme"),
        ),
      ),
    );
  }
}
