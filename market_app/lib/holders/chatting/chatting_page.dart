import 'package:flutter/material.dart';

class ChattingPage extends StatelessWidget {
  const ChattingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[100],
      child: Center(
        child: Text(
          'IndexedStack 4',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}
