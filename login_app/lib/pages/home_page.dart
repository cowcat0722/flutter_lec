import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: ElevatedButton(
          child: Text("move login page"),
          onPressed: () {
            Navigator.pushNamed(context, "/login");
          },
        ),
      ),
    );
  }
}
