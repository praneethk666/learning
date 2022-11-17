import 'package:flutter/material.dart';
import 'package:learning/quix.dart';
import 'package:learning/result.dart';

void main() => runApp(const KkKk());
class KkKk extends StatefulWidget {
  const KkKk({Key? key}) : super(key: key);

  @override
  State<KkKk> createState() => _KkKkState();
}

class _KkKkState extends State<KkKk> {
  static const _quesions = [
    {
      'quesText': 'what\'s your favorite color?',
      'ans': [{"text":'Black',"score":10}, {"text":'Red',"score":20}, {"text":'Yellow',"score":30}, {"text":'Green',"score":40}],
    },
    {
      'quesText': 'what\'s your favorite animal?',
      'ans': [{"text":'Lion',"score":10}, {"text":'Horse',"score":20}, {"text":'Tiger',"score":30}, {"text":'Monkey',"score":40}],
    },
    {
      'quesText': 'who are you?',
      'ans': [{"text":'Human',"score":10},{"text": 'Alien',"score":20}, {"text":'Inhuman',"score": 30}],
    },
  ];
  var _qIndex = 0;
  var  _totalScoree = 0;
  void _reser(){
    setState(() {
        _qIndex = 0;
        _totalScoree = 0;
    });
  }
  void _answerQuestion(int scoree){
    _totalScoree = _totalScoree+scoree;
      setState(() {
        _qIndex = _qIndex + 1;
      });
      if (_qIndex < _quesions.length){

    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              centerTitle: true,
              title: const Text("QUIZ"),
              backgroundColor: Colors.black,
            ),
            body: _qIndex < _quesions.length? Q(_answerQuestion, _quesions, _qIndex):MyWidget(_totalScoree,_reser),
        )
        )
    );
  }
}
