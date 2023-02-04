import 'package:diajar_flutter/ui/item_card.dart';
import 'package:flutter/material.dart';

class FoodListView extends StatelessWidget {
  const FoodListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Container(
        height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ItemCard(),
          ItemCard(),
          ItemCard(),
          ItemCard(),
        ],
      ),
      ),
    );
  }
}
