import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_01/todo.dart';

void main() {
  runApp(
      ProviderScope(child: MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoPage(),
    );
  }
}

class TodoPage extends ConsumerWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 1. ref 가 있어야 창고 관리자에게 접근 가능
    // 2. read 는 창고 데이터를 한 번만 수신 (상태 변경을 관찰 안한다)
    // 단점 : 창고 관리자랑 창고 데이터(모델)만 있으니깐 View 모델이 없다.
    // 그래서 VM을 만드는 것이 좋다.
    Todo todo = ref.read(todoProvider);

    return Scaffold(
      body: Center(
        child: Text(
          "완료 : ${todo.isCompleted}, 내용 : ${todo.description}",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
