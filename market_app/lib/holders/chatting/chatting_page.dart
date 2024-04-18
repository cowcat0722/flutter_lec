import 'package:flutter/material.dart';
import 'package:market_app/holders/components/appbar_preferred_size.dart';
import 'package:market_app/models/chat_message.dart';

class ChattingPage extends StatelessWidget {
  const ChattingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('채팅'),
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: List.generate(
          chatMessageList.length,
          (index) => Container(),
        ),
      ),
    );
  }
}
