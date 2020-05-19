import 'package:flutter/material.dart';

class UnitConversionWidget extends StatefulWidget {
  final String itemName;
  final String unitStart;
  final String unitEnd;
  final Function unitConversion;

  UnitConversionWidget(
      {this.itemName, this.unitStart, this.unitEnd, this.unitConversion});

  @override
  _UnitConversionWidgetState createState() => _UnitConversionWidgetState();
}

class _UnitConversionWidgetState extends State<UnitConversionWidget> {
  final amountController = TextEditingController();

  String convertedAmount = '';

  void _updateEndUnit() {
    this.setState(() {
      convertedAmount = widget
          .unitConversion(double.parse(amountController.text))
          .toStringAsFixed(2);
      print(convertedAmount);
    });
  }

  @override
  void initState() {
    super.initState();
    amountController.addListener(_updateEndUnit);
  }

  @override
  Widget build(BuildContext context) {
    return /*Column(
      children: [*/
        Container(
            width: 350,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(this.widget.itemName),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: 50,
                  height: 50,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: amountController,
                  ),
                ),
                Text('${this.widget.unitStart} = '),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: 50,
                  height: 50,
                  child: TextField(
                    enabled: false,
                    controller: TextEditingController(text: convertedAmount),
                  ),
                ),
                Text(this.widget.unitEnd)
              ],
            ));
    // ],
    //   );
  }
}
