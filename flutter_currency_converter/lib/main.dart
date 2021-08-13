import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/App/view/home_view.dart';

main(List<String> args) {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.orange.shade700, brightness: Brightness.dark),
      home: HomeView(),
    );
  }
}
