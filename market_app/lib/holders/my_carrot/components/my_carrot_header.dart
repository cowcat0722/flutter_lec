import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:market_app/theme.dart';

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
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Color.fromRGBO(225, 226, 208, 1),
            border: Border.all(color: Color(0xFFD4D5DD), width: 0.5),
          ),
          child: Icon(
            iconData,
            color: Colors.orange,
          ),
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: textTheme().titleMedium,
        )
      ],
    );
  }

  Widget _buildProfileButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFD4D5DD),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(6.0),
        ),
        height: 45,
        child: Center(
          child: Text(
            '프로필 보기',
            style: textTheme().titleMedium,
          ),
        ),
      ),
    );
  }

  Widget _buildProfileRow() {
    return Row(
      children: [
        Stack(
          children: [
            SizedBox(
              width: 65,
              height: 65,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32.5),
                child: Image.network(
                  'https://picsum.photos/200/100',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[100],
                ),
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 15,
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'developer',
              style: textTheme().displayMedium,
            ),
            SizedBox(height: 10),
            Text('좌동 #00912'),
          ],
        )
      ],
    );
  }
}
