import 'package:flutter/material.dart';
import 'package:recipe_app2/components/recipe_list_item.dart';
import 'package:recipe_app2/components/recipe_menu.dart';
import 'package:recipe_app2/components/recipe_title.dart';

class RecipeBody extends StatelessWidget {
  RecipeBody({
    super.key,
  });

  final list = ["coffee", "pizza", "burger"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          RecipeTitle(),
          RecipeMenu(),
          for (String text in list) RecipeListItem(title: text)
        ],
      ),
    );
  }
}
