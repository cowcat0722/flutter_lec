import 'package:flutter_riverpod/flutter_riverpod.dart';

// 창고 데이터
class Todo {
  bool isCompleted;
  String description;
  Todo(this.isCompleted, this.description);
}

// 창고
class TodoVM extends Todo {
  TodoVM(super.isCompleted, super.description);
}

// 창고 관리자
final todoProvider = StateProvider<TodoVM>((ref){
  return TodoVM(true, "공부하기");
});