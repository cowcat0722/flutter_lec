import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app2/components/recipe_body.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: RecipeBody(),
    );
  }

  AppBar _appbar() {
    return AppBar(
      actions: [
        Icon(CupertinoIcons.search),
        SizedBox(width: 15),
        Icon(
          CupertinoIcons.heart,
          color: Colors.redAccent,
        ),
        SizedBox(width: 15),
      ],
    );
  }
}
