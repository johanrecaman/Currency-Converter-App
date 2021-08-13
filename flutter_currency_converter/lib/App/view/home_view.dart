import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/App/components/currency_box.dart';

class HomeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeViewState();
  }
}

class HomeViewState extends State<HomeView> {
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
            CurrencyBox(),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: CurrencyBox(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    onPressed: () {},
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
