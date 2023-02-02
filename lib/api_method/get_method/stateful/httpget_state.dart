import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpGetStateful {
  String? id, fullname, email, avatar;

  HttpGetStateful({this.id, this.fullname, this.email, this.avatar});

  static Future<HttpGetStateful> connectGetApi(String id) async {
    Uri uri = Uri.parse("https://reqres.in/api/users/" + id);

    var dataResponse = await http.get(uri);

    var data = (json.decode(dataResponse.body) ) ["data"];
    print(data);

    return HttpGetStateful(
      id: data["id"].toString(),
      fullname: data["first_name"]+ " " +data["last_name"],
      email: data["email"],
      avatar: data["avatar"],

    );
  }
}
