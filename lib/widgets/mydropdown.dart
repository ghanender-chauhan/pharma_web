// import 'package:flutter/material.dart';

// class MyDropDown extends StatefulWidget {
  


//   @override
//   State<MyDropDown> createState() => _MyDropDownState();
// }

// class _MyDropDownState extends State<MyDropDown> {
//   String value = "";
//   List<DropdownMenuItem<String>> menuitems =[];

//   final medicaltype = {
//     "1" : "Tablet",
//     "2" : "IV Infusion",
//     "3" : "SC Injection",
//     "4" : "Cream",
//     "5" : "Ointment",
//     "6" : "Other",
//   };

//   void populateweb(){
//     for(String key in medicaltype.keys){
//       menuitems.add(DropdownMenuItem<String>(
//         value: medicaltype[key],
//         child: Center(
//           child: Text(
//             medicaltype[key]!
//           ),
//         ),
//       ));
//     }
//   }



//   void valuechanged(_value){
//     if(_value == "Tablet "){
//       menuitems=[];
//       populateweb();
//     }
//     setState(() {
//       value = _value;
//     });
//   }




//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: [
//             DropdownButton<String>
//             (items: menuitems,
//              onChanged: (_value)=> valuechanged(_value),
             
//              hint: Text("Select"),
//              ),
//              Text("$value"),
//           ],
//         ),
//       ) 
      
//     );
//   }
// }


import 'package:flutter/material.dart';

// void main() {
//   runApp(Example());
// }

class Example extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
//  List<String> _locations = ['Please choose a location', 'A', 'B', 'C', 'D']; // Option 1
//  String _selectedLocation = 'Please choose a location'; // Option 1
  List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2

  
  String ? _selectedLocation = null; // Option 2

  @override
  Widget build(BuildContext context) {
    return  DropdownButton(
            hint: Text('Please choose a location'), // Not necessary for Option 1
            value: _selectedLocation,
            onChanged: (String ?newValue) {
              setState(() {
                _selectedLocation = newValue!;
              });
            },
            items: _locations.map((location) {
              return DropdownMenuItem(
                
                child: new Text(location),
                value: location,
              );
            }).toList(),
          )
        
      
    ;
  }
}