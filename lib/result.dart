import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final int scorrr;
  final Function resetHandler;
  const MyWidget(this.scorrr, this.resetHandler, {Key? key}) : super(key: key);
  String get resultP {
    var svns = "OKAY";
    if (scorrr <= 30) {
      svns = "YOU ARE BAD!";
    } else if (scorrr <=50 ) {
      svns = "yOU ARE BADDEST!";
    } else if (scorrr <= 80) {
      svns = "YOU ARE ALIEN!";
    } else {
      svns = "YOU ARE AWSOME!";
    }
    return svns;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            resultP,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 33),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 24,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey, onPrimary: Colors.amber),
            onPressed: () {
              resetHandler();
            },
            child: const Text("RESTART QUIZ",
                style: TextStyle(fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}
