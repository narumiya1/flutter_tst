import 'package:diajar_flutter/api_method/api_client.dart';
import 'package:flutter/material.dart';

class ApiMethod extends StatefulWidget {
  const ApiMethod({super.key});

  @override
  State<ApiMethod> createState() => _ApiMethodState();
}

class _ApiMethodState extends State<ApiMethod> {
  HttpState dataResponse = HttpState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Method Route'),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: Text(
                (dataResponse.id == null)
                    ? "Id :  belum ada data"
                    : "ID : ${dataResponse.id}",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            FittedBox(
              child: Text(
                (dataResponse.id == null)
                    ? "Name :  belum ada data"
                    : "Name : ${dataResponse.name}",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            FittedBox(
              child: Text(
                (dataResponse.id == null)
                    ? "Job :  belum ada data"
                    : "Job : ${dataResponse.job}",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            FittedBox(
              child: Text(
                (dataResponse.id == null)
                    ? "Created At :  belum ada data"
                    : "created At : ${dataResponse.createdAt}",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate back to first route when tapped.
                HttpState.connecntToApi("John Dahl Tomasson", "Footballer")
                    .then(
                  (value) {
                    print(value.job);
                    setState(() {
                      dataResponse = value;
                    });
                  },
                );
              },
              child: const Text(
                ' Post Data !',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
