import 'dart:math';

import 'package:diajar_flutter/api_method/get_method/stateful/httpget_state.dart';
import 'package:flutter/material.dart';

class HomeStatefulGet extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStatefulGet> {
  HttpGetStateful dataResponse = HttpGetStateful();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GET - STATEFUL"),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 100,
                width: 100,
                child: Image.network(
                  (dataResponse.avatar == null)
                      ? "https://www.uclg-planning.org/sites/default/files/styles/featured_home_left/public/no-user-image-square.jpg?itok=PANMBJF-"
                      : dataResponse.avatar.toString(),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            FittedBox(
              child: Text(
                (dataResponse.id == null)
                    ? "ID : Belum ada data"
                    : "ID : ${dataResponse.id}",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            FittedBox(
              child: Text(
                (dataResponse.fullname == null)
                    ? "Name : "
                    : "Name : ${dataResponse.fullname}",
                style: TextStyle(fontSize: 20),
              ),
            ),
        
            SizedBox(height: 20),
            FittedBox(
              child: Text(
                (dataResponse.email == null)
                    ? "Email : "
                    : "Email :  ${dataResponse.email}",
                style: TextStyle(fontSize: 20),
              ),
            ),
       
            SizedBox(height: 100),
            OutlinedButton(
              onPressed: () {
                HttpGetStateful.connectGetApi(
                        (1 + Random().nextInt(14)).toString())
                    .then((value) {
                  setState(() {
                    dataResponse = value;
                  });
                });
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
