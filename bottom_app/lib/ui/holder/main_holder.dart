// 이름만 보고 여기 화면에 여러 페이지를 둘 수 있겠구나 생각
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'first/first_page.dart';
import 'second/second_page.dart';
import 'third/third_page.dart';

class MainHolder extends StatefulWidget {
  const MainHolder({super.key});

  @override
  State<MainHolder> createState() => _MainHolderState();
}

class _MainHolderState extends State<MainHolder> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    // 통신 코드
    return Scaffold(
      body: IndexedStack(
        // IndexedStack이 build될때 children이 전부 new가 된다.(비효율적)
        // 1. Lazy하게 로딩 하여야 함. _index에 맞는 페이지만 로딩
        // 2. 로딩 페이지를 만들어 미리 new를 다한 상태로 앱을 시작
        index: _index,
        children: [
          FirstPage(),
          SecondPage(),
          ThirdPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // 아래 테마설정들은 위의 주석의 테마로 빼서 만드는게 좋음
        // 중간으로 옮겨짐(글자 안보임)
        showSelectedLabels: false,
        // 선택 될 때만 글자가 보임
        showUnselectedLabels: false,
        // 아이콘 색
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,

        backgroundColor: Colors.grey[100],
        // 선택된 아이콘에 색상 보여주기
        currentIndex: _index,
        items: [
          // item 개수는 5개가 최대값, 2개가 최소값
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.comment),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.ellipsisH),
            label: "",
          ),
        ],
        onTap: (value) {
          _index = value;
          setState(() {});
        },
      ),
    );
  }
}
