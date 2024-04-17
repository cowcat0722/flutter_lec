import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[100],
      child: Center(
        child: Text(
          'IndexedStack 1',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}
