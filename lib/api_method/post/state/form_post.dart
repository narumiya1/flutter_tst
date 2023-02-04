import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FormPosts extends StatefulWidget {
  const FormPosts({super.key});

  @override
  State<FormPosts> createState() => _FormPostsState();
}

class _FormPostsState extends State<FormPosts> {
  TextEditingController nameC = TextEditingController();
  TextEditingController jobsC = TextEditingController();
  String hasilResponse = "belum ada data";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTTP POST FORM"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: [
          TextFormField(
            controller: nameC,
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(),
                ),
                labelText: " Name"),
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: jobsC,
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(),
                ),
                labelText: " Jobs"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              var resultResponse = await http.post(
                Uri.parse("https://reqres.in/api/users"),
                body: {"name": nameC.text, "job": jobsC.text},
              );
              print(resultResponse.body);
              Map<String, dynamic> dataResponseApi = json.decode(resultResponse.body) as Map<String, dynamic>;
              setState(() {
                hasilResponse = "${dataResponseApi['name']} - ${dataResponseApi['job']}";
              });
            },
            child: Text("Submit"),
          ),
          const SizedBox(height: 50),
          const Divider(color: Colors.black54),
          Text(hasilResponse)
        ],
      ),
    );
  }
}
