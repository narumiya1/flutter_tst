
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'api_method_provider.dart';
import 'home_provider.dart';

class ApiMethodProvider extends StatelessWidget {
  const ApiMethodProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => HttpProvider(),
        child: HomeProvider(),
      ),
    );
  }
}
