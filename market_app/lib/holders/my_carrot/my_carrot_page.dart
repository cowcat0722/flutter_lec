import 'package:flutter/material.dart';

class MyCarrotPage extends StatelessWidget {
  const MyCarrotPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Row(
        children: [
          Text('나의 당근'),
        ],
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0.5),
        child: Divider(
          thickness: 0.5,
          height: 0.5,
          color: Colors.grey,
        ),
      ),
    ));
  }
}
