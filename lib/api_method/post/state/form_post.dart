import 'package:flutter/material.dart';

class FormPosts extends StatefulWidget {
  const FormPosts({super.key});

  @override
  State<FormPosts> createState() => _FormPostsState();
}

class _FormPostsState extends State<FormPosts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTTP POST FORM"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Email"),
          )
        ],
      ),
    );
  }
}
