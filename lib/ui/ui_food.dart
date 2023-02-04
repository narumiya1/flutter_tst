import 'package:diajar_flutter/ui/app_bar.dart';
import 'package:diajar_flutter/ui/food_list_view.dart';
import 'package:diajar_flutter/ui/my_action_button.dart';
import 'package:diajar_flutter/ui/my_app_bar.dart';
import 'package:diajar_flutter/ui/select_typr_selection..dart';
import 'package:flutter/material.dart';

import 'menu_item_list.dart';

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Floating Action Button
      floatingActionButton: MyActionFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      //Bottom Navigation Bar
      bottomNavigationBar: MyAppBars(),
     
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 20),
            AppBar2(),
            SizedBox(height: 20),
            FoodListView(),
            SizedBox(height: 20),
            SelecTypeSelection(),
            SizedBox(height: 20),
            MenuItemList(),
          ],
        ),
      ),
    );
  }
}
