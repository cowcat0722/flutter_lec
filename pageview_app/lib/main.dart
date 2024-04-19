import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        // TabBar가 있으면 NestedScrollView를 사용 해야한다.(동적으로 TabBar크기를 계산 해주기 때문, 퍼포먼스는 더 떨어짐)
        slivers: [
          SliverAppBar(
            title: Text('앱바'),
            // 고정
            pinned: true,
            // 앱바가 사라졌을 때 조금 내리면 앱바 보이게 하기
            // snap: true,
            // snap과 세트(둘이 같이 써야함)
            // floating: true,
            // 앱바에 영역을 부여
            expandedHeight: 250,
            flexibleSpace: Container(
              color: Colors.green,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.red,
              height: 300,
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: MyPersistentHeaderDelegate(
              child: Container(
                color: Colors.blueGrey,
                child: Center(
                  child: Text(
                    'SliverPersistentHeader',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ),
              minHeight: 50,
              maxHeight: 500,
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: MyPersistentHeaderDelegate(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 30,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    color: Colors.yellow[((index % 9) + 1) * 100], // 0 ~ 8
                  );
                },
              ),
              minHeight: 100,
              maxHeight: 100,
            ),
          ),
          SliverToBoxAdapter(
            // 가로 스크롤
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 30,
                itemBuilder: (context, index) {
                  return Container(
                    width: 50,
                    color: Colors.yellow[((index % 9) + 1) * 100],
                  );
                },
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 20,
              (context, index) {
                return Container(
                  height: 50,
                  color: Colors.blue[((index % 9) + 1) * 100],
                );
              },
            ),
          ),
          // 스크롤이 끝날 때 남은 크기를 다 차지해줌
          SliverFillRemaining(
            child: Center(
              child: Text('This is the remaining content.'),
            ),
          ),
        ],
      ),
    );
  }
}

class MyPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  MyPersistentHeaderDelegate({
    required this.child,
    required this.minHeight,
    required this.maxHeight,
  });

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }
}
