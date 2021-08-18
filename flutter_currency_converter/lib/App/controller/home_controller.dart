import 'package:flutter/cupertino.dart';
import 'package:flutter_currency_converter/App/models/currency_model.dart';

class HomeController {
  late List<CurrencyModel?> currencies;

  final TextEditingController fromText;
  final TextEditingController toText;

  late CurrencyModel? toCurrency;
  late CurrencyModel? fromCurrency;

  HomeController({required this.fromText, required this.toText}) {
    currencies = CurrencyModel.getCurrencies();
    fromCurrency = currencies[0];
    toCurrency = currencies[1];
  }

  void convert(String currencyIndex) {
    String text = fromText.text;
    double value = double.parse(text.replaceAll(',', '.'));
    double returnValue = 0;

    switch (currencyIndex) {
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

    toText.text = returnValue.toStringAsFixed(2);
  }
}
