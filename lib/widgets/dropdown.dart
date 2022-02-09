import 'package:flutter/material.dart';

class DropDownmenu extends StatelessWidget {
  final List<String> menuItems;
  final void Function(String?)? onChanged;
  final String? initialValue;
  final String? hintText;
  const DropDownmenu(
      {Key? key,
      required this.menuItems,
      required this.onChanged,
      this.initialValue,
      this.hintText})
      : super(key: key);

//   @override
//   _DropDownmenuState createState() => _DropDownmenuState();
// }

// class _DropDownmenuState extends State<DropDownmenu> {
//   // String dropdownvalue = "Tablet";

// List of items in our dropdown menu

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        hint: hintText != null ? Text(hintText.toString()) : null,
        // disabledHint: Text("data"),

        // Initial Value
        value: initialValue,

        // Down Arrow Icon
        icon: const Icon(Icons.keyboard_arrow_down),

        // Array list of items
        items: menuItems.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(items),
          );
        }).toList(),
        // After selecting the desired option,it will
        // change button value to selected value
        onChanged: onChanged,
      ),
    );
  }
}
