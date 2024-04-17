import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCarrotHeader extends StatelessWidget {
  const MyCarrotHeader({super.key});

  @override
  Widget build(BuildContext context) {
    // Card 위젯은 입체감과 모서리에 곡선이 필요한 위젯을 만들 때 사용하는 위젯
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero, // 카드는 마진이 필요없기 때문에 0으로 설정
      // Card 위젯의 모서리 곡선을 없애기 위해 사용
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          children: [
            _buildProfileRow(),
            SizedBox(height: 30),
            _buildProfileButton(),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildRoundTextButton('판매내역', FontAwesomeIcons.receipt),
                _buildRoundTextButton('구매내역', FontAwesomeIcons.shoppingBag),
                _buildRoundTextButton('구매내역', FontAwesomeIcons.heart),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildRoundTextButton(String title, IconData iconData) {
    return Container(color: Colors.orange[100], height: 60, width: 60);
  }

  Widget _buildProfileButton() {
    return Container(color: Colors.blue[100], height: 45);
  }

  Widget _buildProfileRow() {
    return Container(color: Colors.redAccent[100], height: 60);
  }
}
