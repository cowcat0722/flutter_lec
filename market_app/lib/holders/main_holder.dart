import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chatting/chatting_page.dart';
import 'home/home_page.dart';
import 'my_carrot/my_carrot_page.dart';
import 'near_me/near_my_page.dart';
import 'neighborhood_life/neighborhood_life_page.dart';

class MainHolder extends StatefulWidget {
  const MainHolder({super.key});

  @override
  State<MainHolder> createState() => _MainHolderState();
}

class _MainHolderState extends State<MainHolder> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _index,
        children: [
          HomePage(),
          NeighborhoodLifePage(),
          NearMePage(),
          ChattingPage(),
          MyCarrotPage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_on_square),
            label: '동네생활',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.placemark),
            label: '내 근처',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_2),
            label: '채팅',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: '나의 당근',
          ),
        ],
        onTap: (value) {
          setState(() {
            _index = value;
            print("클릭됨 ${value}");
          });
        },
        currentIndex: _index,
      ),
    );
  }
}
