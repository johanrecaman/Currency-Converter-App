import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CurrencyBoxState();
  }
}

class CurrencyBoxState extends State<CurrencyBox> {
  var currentValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 65,
            child: DropdownButton<String>(
              isExpanded: true,
              value: currentValue,
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
              items: <String>['Real ', 'Dólar ', 'Euro '].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: new Text(
                    value,
                    style: TextStyle(fontSize: 20.0),
                  ),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  currentValue = newValue;
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
          child: TextField(decoration: InputDecoration()),
        ),
      ],
    );
  }
}
