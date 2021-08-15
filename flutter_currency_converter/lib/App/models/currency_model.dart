class CurrencyModel {
  final String currencyName;
  final double real;
  final double dolar;
  final double euro;

  CurrencyModel({this.currencyName = "", this.real = 0, this.dolar = 0, this.euro = 0});

  static List<CurrencyModel?> getCurrencies() {
    return <CurrencyModel?>[
      CurrencyModel(currencyName: 'Real', real: 1.0, dolar: 0.19, euro: 0.16),
      CurrencyModel(currencyName: 'Dólar', real: 5.25, dolar: 1.0, euro: 0.85),
      CurrencyModel(currencyName: 'Euro', real: 6.17, dolar: 1.17, euro: 1.0),
    ];
  }
}
