import 'package:diajar_flutter/api_method/get_method/provider/page_provider_get.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'http_get_provider.dart';

class GetMethodProvider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => HttpGetProvider(),
        child:  HomeGetProvider(),
      ),
    );
  }
}
