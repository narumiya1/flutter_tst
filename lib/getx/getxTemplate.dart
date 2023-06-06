import 'package:diajar_flutter/getx/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXTemplate extends StatelessWidget {
  // const GetXTemplate({super.key});
  final countC = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            "Angka ${countC.count} ",
            style: TextStyle(
              fontSize: 35,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed:() {
          countC.increment();
        }),
      ),
    );
  }
}