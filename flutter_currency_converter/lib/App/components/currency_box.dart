import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/App/controller/home_controller.dart';
import 'package:flutter_currency_converter/App/models/currency_model.dart';

class CurrencyBox extends StatefulWidget {
  final List<CurrencyModel?> items;
  final CurrencyModel? selectedItem;
  final TextEditingController controller;
  final void Function(CurrencyModel? model) onChanged;

  CurrencyBox(this.items, this.controller, this.onChanged, this.selectedItem);

  @override
  State<StatefulWidget> createState() {
    return CurrencyBoxState(items, controller, onChanged, selectedItem);
  }
}

class CurrencyBoxState extends State<CurrencyBox> {
  var currentValue;

  CurrencyModel? selectedItem;
  final List<CurrencyModel?> items;
  final TextEditingController controller;
  final void Function(CurrencyModel? model) onChanged;

  CurrencyBoxState(
      this.items, this.controller, this.onChanged, this.selectedItem);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 65,
            child: DropdownButton<CurrencyModel>(
              isExpanded: true,
              value: selectedItem,
              icon: Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
              elevation: 16,
              style: TextStyle(color: Colors.orange),
              underline: Container(
                height: 2.5,
                color: Colors.orange,
              ),
              items: items.map((e) {
                return DropdownMenuItem<CurrencyModel>(
                  value: e,
                  child: new Text(
                    e!.currencyName,
                    style: TextStyle(fontSize: 20.0),
                  ),
                );
              }).toList(),
              onChanged: (e) {
                setState(() {
                  selectedItem = e;
                });
              },
            ),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
          flex: 2,
          child:
              TextField(controller: controller, decoration: InputDecoration()),
        ),
      ],
    );
  }
}
