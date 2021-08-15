import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/App/components/currency_box.dart';
import 'package:flutter_currency_converter/App/controller/home_controller.dart';
import 'package:flutter_currency_converter/App/models/currency_model.dart';

class HomeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeViewState();
  }
}

class HomeViewState extends State<HomeView> {
  final TextEditingController fromText = TextEditingController();
  final TextEditingController toText = TextEditingController();

  late HomeController homeController;

  void initState() {
    super.initState();
    homeController = HomeController(toText: fromText, fromText: toText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
        child: Column(
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 300,
              width: 500,
              alignment: Alignment.bottomCenter,
            ),
            CurrencyBox(homeController.currencies, fromText, (model) {
              setState(() {
                homeController.toCurrency = model;
              });
            }, homeController.fromCurrency),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: CurrencyBox(homeController.currencies, toText, (model) {
                setState(() {
                  homeController.fromCurrency = model;
                });
              }, homeController.toCurrency),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      homeController.convert();
                    },
                    child: Text('CONVERTER'),
                    style: ElevatedButton.styleFrom(primary: Colors.amber)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
