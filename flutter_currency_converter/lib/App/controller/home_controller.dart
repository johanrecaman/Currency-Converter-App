import 'package:flutter/cupertino.dart';
import 'package:flutter_currency_converter/App/models/currency_model.dart';

class HomeController {
  late List<CurrencyModel?> currencies;

  final TextEditingController toText;
  final TextEditingController fromText;

  late CurrencyModel? toCurrency;
  late CurrencyModel? fromCurrency;

  HomeController({required this.toText, required this.fromText}) {
    currencies = CurrencyModel.getCurrencies();
    fromCurrency = currencies[0];
    toCurrency = currencies[1];
  }

  void convert() {
    String text = toText.text;
    double value = double.parse(text.replaceAll(',', '.'));
    double returnValue = 0;

    switch (fromCurrency?.currencyName) {
      case 'Real':
        returnValue = value * fromCurrency!.real;
        break;
      case 'Dólar':
        returnValue = value * fromCurrency!.dolar;
        break;
      case 'Euro':
        returnValue = value * fromCurrency!.euro;
        break;
    }

    fromText.text = returnValue.toStringAsFixed(2);
  }
}
