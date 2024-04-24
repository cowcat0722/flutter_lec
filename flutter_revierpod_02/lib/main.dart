import 'package:flutter/material.dart';
import 'package:flutter_revierpod_02/fruit_store.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FruitPage(),
    );
  }
}

class FruitPage extends ConsumerWidget {
  const FruitPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String data = ref.watch(fruitProvider); // 창고의 데이터 리턴

    FruitVM vm = ref.read(fruitProvider.notifier); // 창고 리턴

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'data : ${data}',
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              child: Text('딸기로 상태 변경'),
              onPressed: () {
                vm.changeDataStrawberry();
              },
            ),
            ElevatedButton(
              child: Text('사과로 상태 변경'),
              onPressed: () {
                vm.changeDataApple();
              },
            )
          ],
        ),
      ),
    );
  }
}
