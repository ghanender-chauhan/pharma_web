import 'package:flutter/material.dart';



class HomePages extends StatefulWidget {
  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  String value = "";
  List<DropdownMenuItem<String>> menuitems = [];
  bool disabledropdown = true;

  final web = {
    "1": "PHP",
    "2": "Python",
    "3": "Node JSs",
  };

  final app = {
    "1": "Java",
    "2": "Flutter",
    "3": "React Native",
  };

  final desktop = {
    "1": "JavaFx",
    "2": "Tkinter",
    "3": "Electron",
  };

  void populateweb() {
    for (String key in web.keys) {
      menuitems.add(DropdownMenuItem<String>(
        child: Center(
          child: Text(web[key]!),
        ),
        value: web[key],
      ));
    }
  }

  void populateapp() {
    for (String key in app.keys) {
      menuitems.add(DropdownMenuItem<String>(
        child: Center(
          child: Text(app[key]!),
        ),
        value: app[key],
      ));
    }
  }

  void populatedesktop() {
    for (String key in desktop.keys) {
      menuitems.add(DropdownMenuItem<String>(
        child: Center(
          child: Text(desktop[key]!),
        ),
        value: desktop[key],
      ));
    }
  }

  void selected(_value) {
    if (_value == "Web") {
      menuitems = [];
      populateweb();
    } else if (_value == "App") {
      menuitems = [];
      populateapp();
    } else if (_value == "Desktop") {
      menuitems = [];
      populatedesktop();
    }
    setState(() {
      value = _value;
      disabledropdown = false;
    });
  }


  // List<MultiSelectDialogItem<int>> multiItem = [];

  final valuestopopulate = {
    1: "India",
    2: "Britain",
    3: "Russia",
    4: "Canada",
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dropdown",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            DropdownButton<String>(
              // items: web[]!,
              items: [],
              // items: [
              //   DropdownMenuItem<String>(
              //     value: "App",
              //     child: Center(
              //       child: Text("App"),
              //     ),
              //   ),
              //   DropdownMenuItem<String>(
              //     value: "Web",
              //     child: Center(
              //       child: Text("Web"),
              //     ),
              //   ),
              //   DropdownMenuItem<String>(
              //     value: "Desktop",
              //     child: Center(
              //       child: Text("Desktop"),
              //     ),
              //   ),
              // ],
              onChanged: (_value) => selected(_value),
              hint: Text("Select Your Field"),
            ),
            DropdownButton<String>(
              items: menuitems,
              onChanged:
                  disabledropdown ? null : (_value) {},
              hint: Text("Select Your Technology"),
              disabledHint: Text("First Select Your Field"),
            ),
            // Text(
            //   "$value",
            //   style: TextStyle(
            //     fontSize: 20.0,
            //   ),
            // ),
            // RaisedButton(
            //   child: Text("Open Multiselect"),
            //   onPressed: () => _showMultiSelect(context),
            // ),
          ],
        ),
      ),
    );
  }
}
