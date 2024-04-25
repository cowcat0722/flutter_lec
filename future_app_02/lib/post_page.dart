import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  PostPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1 / 1,
            child: Image.network("https://picsum.photos/id/50/200/200",
                fit: BoxFit.cover),
          ),
          Text("id : 1, userId: 2, title : 제목1"),
          ElevatedButton(onPressed: () {}, child: Text("값변경")),
        ],
      ),
    );
  }
}