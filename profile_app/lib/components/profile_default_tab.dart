import 'package:flutter/material.dart';

class ProfileDefaultTab extends StatelessWidget {
  const ProfileDefaultTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(icon: Icon(Icons.car_crash)),
                Tab(icon: Icon(Icons.car_repair)),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(color: Colors.red),
                  GridView.builder(
                    itemCount: 15,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      print("그려짐 ${index}");
                      return Image.network(
                          "https://picsum.photos/id/${index + 1}/200/200");
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
