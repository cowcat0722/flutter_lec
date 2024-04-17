import 'package:flutter/material.dart';

class NeighborhoodLifePage extends StatelessWidget {
  const NeighborhoodLifePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent[100],
      child: Center(
        child: Text(
          'IndexedStack 2',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}
