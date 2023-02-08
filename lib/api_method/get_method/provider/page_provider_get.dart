import 'dart:math';

import 'package:diajar_flutter/api_method/get_method/provider/http_get_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeGetProvider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<HttpGetProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Get Method"),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(45),
              child: Container(
                height: 100,
                width: 100,
                child: Consumer<HttpGetProvider>(
                  builder: (context, value, child) => Image.network(
                    (value.data["avatar"] == null)
                        ? "https://www.uclg-planning.org/sites/default/files/styles/featured_home_left/public/no-user-image-square.jpg?itok=PANMBJF-"
                        : value.data["avatar"],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            FittedBox(
              child: Text(
                "ID : Belum ada data",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            FittedBox(child: Text("Name : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Consumer<HttpGetProvider>(
                builder: (context, value, child) => Text(
                  (value.data["id"] == null)
                      ? "ID : Belum ada data"
                      : "ID : ${value.data["id"]}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 20),
            FittedBox(child: Text("Email : ", style: TextStyle(fontSize: 20))),
            FittedBox(
             child: Consumer<HttpGetProvider>(
                builder: (context, value, child) => Text(
                  (value.data["email"] == null)
                      ? "Belum ada data"
                      : value.data["email"],
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 100),
            OutlinedButton(
              onPressed: () {
                dataProvider.connectApiGetProvider((1 + Random().nextInt(10)).toString());
              },
              child: Text(
                "GET DATA",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
