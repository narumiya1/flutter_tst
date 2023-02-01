import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class HttpGetProvider with ChangeNotifier {
  
  //_data
  Map<String, dynamic> _dataApi = {};

  Map<String, dynamic> get data => _dataApi;

  int get jumlahData => _dataApi.length;
  
  void connectApiGetProvider(String id) async {
    Uri uri = Uri.parse("https://reqres.in/api/users/" + id);

    var dataResponse = await http.get(uri);

    _dataApi = (json.decode(dataResponse.body))["data"];
    notifyListeners();

  }
}
