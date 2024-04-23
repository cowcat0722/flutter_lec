import 'package:flutter_riverpod/flutter_riverpod.dart';

// 1. 창고 데이터 (상태값)
String data = '사과';

// 2. 창고 (상태 변경 메서드)
class FruitVM extends StateNotifier<String> {
  FruitVM(super.state);

  void changeData() {
    state = '딸기';
  }
}

// 3. 창고 관리자 (창고에 read/write 해주는 친구)
// <창고이름, 창고상태 타입>
// watch or read 할 때 호출 됨
final fruitProvider = StateNotifierProvider<FruitVM, String>((ref) {
  return FruitVM('사과');
});
