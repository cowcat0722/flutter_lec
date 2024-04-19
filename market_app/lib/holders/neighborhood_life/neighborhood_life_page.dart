import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_app/holders/components/appbar_preferred_size.dart';

import '../../models/neighborhood_life.dart';
import 'components/life_body.dart';
import 'components/life_header.dart';

class NeighborhoodLifePage extends StatelessWidget {
  const NeighborhoodLifePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('동네생활'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.plus_rectangle_on_rectangle),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.bell),
          ),
        ],
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: [
          LifeHeader(),
          ...List.generate(
            neighborhoodLifeList.length,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: LifeBody(
                neighborhoodLife: neighborhoodLifeList[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
