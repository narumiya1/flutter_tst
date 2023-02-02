import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpState {
  String? id, name, job, createdAt;
  HttpState({this.id, this.name, this.job, this.createdAt});

  static Future<HttpState> connecntToApi(String name, String job) async {
    var url = "https://reqres.in/api/users";
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
    var data = json.decode(hasil.body);

    return HttpState(
      id: data["id"],
      name: data["name"],
      job: data["job"],
      createdAt: data["createdAt"],
    );
  }
}
