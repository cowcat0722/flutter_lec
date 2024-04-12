import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// stl 이라고만 치면 snitpet으로 자동완성
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // main에서 runApp이 실행되면 자동으로 실행됨 (콜백됨)
    return MaterialApp(
      // Android 디자인
      home: StorePage(),
    );
  }
}

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Woman",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Kids",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Shoes",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Bag",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Image.asset(
                "assets/bag.jpeg",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 1),
            Expanded(
              flex: 1,
              child: Image.asset(
                "assets/cloth.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
