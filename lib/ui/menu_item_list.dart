import 'package:diajar_flutter/ui/menu_item.dart';
import 'package:flutter/material.dart';

class MenuItemList extends StatelessWidget {
  const MenuItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Popular Dishes',
            style: TextStyle(fontSize: 22.0, color: Colors.black54),
          ),
           SizedBox(height: 16.0),
          MenuItem2(),
          MenuItem2(),
        ],
      ),
    );
  }
}
