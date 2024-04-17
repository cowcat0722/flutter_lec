import 'package:flutter/material.dart';
import 'package:market_app/holders/main_holder.dart';
import 'package:market_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'carrot_market',
      debugShowCheckedModeBanner: false,
      home: MainHolder(),
      theme: theme(),
    );
  }
}
