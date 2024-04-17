import 'package:flutter/material.dart';

class MyCarrotPage extends StatelessWidget {
  const MyCarrotPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Center(
        child: Text(
          'IndexedStack 5',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}
