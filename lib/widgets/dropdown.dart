import 'package:flutter/material.dart';

class DropDownmenu extends StatefulWidget {
  const DropDownmenu({ Key? key }) : super(key: key);

  @override
  _DropDownmenuState createState() => _DropDownmenuState();
}

class _DropDownmenuState extends State<DropDownmenu> {
   String dropdownvalue = "Tablet";

// List of items in our dropdown menu
var items = [	
	'Tablet',
	'IV Infusion',
	'SC Injection',
	'Cream',
	'Ointment',
	'Other',
];
@override
Widget build(BuildContext context) {
	return DropdownButtonHideUnderline(
      child: DropdownButton(
     hint: Text("data"),
     disabledHint: Text("data"),
            
          // Initial Value
          value: dropdownvalue,
            
          // Down Arrow Icon
          icon: const Icon(Icons.keyboard_arrow_down),	
            
          // Array list of items
          items: items.map((String items) {
            return DropdownMenuItem(
            value: items,
            child: Text(items),
            );
          }).toList(),
          // After selecting the desired option,it will
          // change button value to selected value
          onChanged: (String? newValue) {
            setState(() {
            dropdownvalue = newValue!;
            });
          },
          ),
    );
	
}
}
