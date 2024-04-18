import 'package:flutter/material.dart';
import 'package:market_app/holders/components/image_container.dart';
import 'package:market_app/theme.dart';

import '../../../models/neighborhood_life.dart';

class LifeBody extends StatelessWidget {
  final NeighborhoodLife neighborhoodLife;

  LifeBody({Key? key, required this.neighborhoodLife}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 0.5, color: Color(0xFFD4D5DD)),
        ),
      ),
      child: Column(
        children: [
          _buildTop(),
          _buildWriter(),
          _buildWriting(),
          _buildImage(),
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey[300],
          ),
          _buildTail(neighborhoodLife.commentCount)
        ],
      ),
    );
  }

  Padding _buildTop() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(4)),
              color: Color.fromRGBO(247, 247, 247, 1),
            ),
            child:
                Text(neighborhoodLife.category, style: textTheme().bodyMedium),
          ),
          Text(
            neighborhoodLife.date,
            style: textTheme().bodyMedium,
          )
        ],
      ),
    );
  }

  Padding _buildWriter() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          ImageContainer(
            borderRadius: 15,
            imageUrl: neighborhoodLife.profileImgUri,
            width: 30,
            height: 30,
          ),
          Text.rich(
            TextSpan(children: [
              TextSpan(
                  text: ' ${neighborhoodLife.userName}',
                  style: textTheme().bodyText1),
              TextSpan(text: ' ${neighborhoodLife.location}'),
              TextSpan(text: ' 인증 ${neighborhoodLife.authCount}회'),
            ]),
          ),
        ],
      ),
    );
  }

  Padding _buildWriting() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Container(color: Colors.blue[100], height: 50),
    );
  }

  Padding _buildImage() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Container(color: Colors.black, height: 150),
    );
  }

  Padding _buildTail(int commentCount) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(color: Colors.lime[100], height: 50),
    );
  }
}
