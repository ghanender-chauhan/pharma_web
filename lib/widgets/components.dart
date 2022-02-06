import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  final String inputtext;

  const textfield({Key? key, required this.inputtext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          // border: InputBorder.none,
          // labelText: 'Enter Name',
          hintText: '$inputtext',
          hintStyle: TextStyle(color: Colors.black87)),
    );
  }
}

class buttons extends StatelessWidget {
  final String buttontext;

  const buttons({Key? key, required this.buttontext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Row(
          children: [
            Icon(
              Icons.add,
              size: 15,
              color: Colors.black87,
            ),
            Text(
              "$buttontext",
              style:
                  TextStyle(color: Colors.black87, fontWeight: FontWeight.w500),
            )
          ],
        ));
  }
}
