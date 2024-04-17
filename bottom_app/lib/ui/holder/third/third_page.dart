import 'package:bottom_app/ui/holder/third/tab.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("더보기"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: GridView.count(
          crossAxisCount: 4,
          children: List.generate(
            tabs.length,
            (index) => Column(
              children: [
                Icon(tabs[index].icon),
                SizedBox(height: 5),
                Text(tabs[index].text),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
