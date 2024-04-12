import 'package:flutter/material.dart';
import 'package:recipe_app2/pages/recipe_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 디버그 깃발 없애기
      theme: ThemeData(fontFamily: "PatuaOne"),
      home: RecipePage(),
    );
  }
}
