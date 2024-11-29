import 'package:flutter/cupertino.dart';
import 'package:ui_kit_interface/ui_kit_interface.dart';

const double _kItemExtent = 32.0;
const List<String> _fruitNames = <String>[
  '1 AM',
  '2 AM',
  '3 AM',
];

class WheelPicker extends StatefulWidget {
  const WheelPicker({super.key});

  @override
  State<WheelPicker> createState() => _WheelPickerState();
}

class _WheelPickerState extends State<WheelPicker> {
  int _selectedFruit = 0;

  @override
  Widget build(BuildContext context) {
    // _fruitNames[_selectedFruit],

    return CupertinoTheme(
      data: CupertinoThemeData(
        textTheme: CupertinoTextThemeData(
          pickerTextStyle: FrogTheme.of(context).textStyles.bodyMedium,
        ),
      ),
      child: CupertinoPicker(
        magnification: 1.22,
        squeeze: 1.2,
        useMagnifier: true,
        itemExtent: _kItemExtent,
        // This sets the initial item.
        scrollController: FixedExtentScrollController(
          initialItem: _selectedFruit,
        ),
        // This is called when selected item is changed.
        onSelectedItemChanged: (int selectedItem) {
          setState(() {
            _selectedFruit = selectedItem;
          });
        },
        children: List<Widget>.generate(_fruitNames.length, (int index) {
          return Center(child: Text(_fruitNames[index]));
        }),
      ),
    );
  }
}
