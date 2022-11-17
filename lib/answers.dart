import 'package:flutter/material.dart';
class Ans extends StatelessWidget {
  final Function handlerD;
  final String ans;
  const Ans(this.handlerD,this.ans, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70,right: 70),
      child: SizedBox(
        width: double.maxFinite,
        child: ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.blueGrey),onPressed: () {
          handlerD();
        }, child:  Text(ans,style: const TextStyle(fontWeight: FontWeight.bold),),
      )
      ),
    );
  }
}