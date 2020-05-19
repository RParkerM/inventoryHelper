import 'package:flutter/material.dart';
import 'package:inventoryCountHelper/unitConversionWidget.dart';

class UnitConversionHelper extends StatelessWidget {
  final String itemName;
  final String unitStart;
  final String unitEnd;
  final Function unitConversion;

  const UnitConversionHelper(
      {this.itemName, this.unitStart, this.unitEnd, this.unitConversion});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      UnitConversionWidget(
        itemName: 'Iodized Salt',
        unitStart: 'each',
        unitEnd: 'pounds',
        unitConversion: (start) {
          return start * 26 / 16;
        },
      ),
      UnitConversionWidget(
        itemName: 'Fryer Oil',
        unitStart: 'containers',
        unitEnd: 'pounds',
        unitConversion: (start) {
          return start * 35;
        },
      ),
      UnitConversionWidget(
        itemName: 'Gnocchi',
        unitStart: 'packages',
        unitEnd: 'pounds',
        unitConversion: (start) {
          return start * 17.5 / 16;
        },
      ),
      UnitConversionWidget(
        itemName: 'Meatballs',
        unitStart: 'each',
        unitEnd: 'pounds',
        unitConversion: (start) {
          return start * 2 / 16;
        },
      ),
      UnitConversionWidget(
        itemName: 'Roasted Mush',
        unitStart: 'package',
        unitEnd: 'pounds',
        unitConversion: (start) {
          return start * 18 / 16;
        },
      ),
    ]);
    /*Container(
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Iodized Salt'),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: 50,
                  height: 50,
                  child: TextField(),
                ),
                Text('each = '),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: 50,
                  height: 50,
                  child: TextField(enabled: false),
                ),
              ],
            ));
    // ],
    //   );*/
  }
}
