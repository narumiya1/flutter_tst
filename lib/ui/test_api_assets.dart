import 'package:diajar_flutter/ui/test_api_asset_detail.dart';
import 'package:diajar_flutter/ui/test_api_asset_welcome.dart';
import 'package:diajar_flutter/ui/test_api_detail.dart';
import 'package:diajar_flutter/ui/tourims_palace.dart';
import 'package:diajar_flutter/ui/ui_food.dart';
import 'package:diajar_flutter/ui/data_spring.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class MyHomePageAssetTest extends StatefulWidget {
  @override
  State<MyHomePageAssetTest> createState() => _MyHomePageAssetTestState();
}

class _MyHomePageAssetTestState extends State<MyHomePageAssetTest> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Sparing'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          //  final TourismPlace place = tourismPlaceList[index];
          final DataSparing dataSparing = dataSparingList[index];
          return Container(
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            dataSparing.name,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            dataSparing.subname,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(dataSparing.date),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return DetailScreenApi(place: dataSparing);
                              }));
                            },
                            child: Text("Detail"),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: dataSparingList.length,
      ),
    );
  }
}
