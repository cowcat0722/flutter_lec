import 'package:flutter/material.dart';

class NearMePage extends StatelessWidget {
  const NearMePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      child: Center(
        child: Text(
          'IndexedStack 3',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}
