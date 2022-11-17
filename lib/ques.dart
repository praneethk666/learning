import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String qText;
  const Questions(this.qText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
          color: Colors.black,
          width: double.infinity,
          child: Text(
            qText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          )),
    );
  }
}
