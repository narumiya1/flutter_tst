import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpProvider with ChangeNotifier {
  Map<String, dynamic> _dataApi2 = {};
  Map<String,dynamic> get data => _dataApi2;

  int get jumlahData => _dataApi2.length;

  void connectApi(String name, String job) async{
    
    // var url = "https://reqres.in/api/users";
    Uri uri = Uri.parse("https://reqres.in/api/users");
    // http.post(Uri.parse(url));

    //result response
    var hasil = await http.post(
      uri,
      body: {
        "name": name,
        "job": job,
      },
    );

    //convert
    _dataApi2 = json.decode(hasil.body);

    //state change
    notifyListeners();


  }

}
