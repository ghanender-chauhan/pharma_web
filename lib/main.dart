import 'package:flutter/material.dart';

import 'package:webapp_cytoclick/Homepage.dart';
import 'package:webapp_cytoclick/widgets/mydropdown.dart';
import 'package:webapp_cytoclick/widgets/new.dart';

import 'gitdropdown.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        return MaterialApp(
          title: "App Making",
          home: HomePage(),
        );
      });
    });
  }
}
