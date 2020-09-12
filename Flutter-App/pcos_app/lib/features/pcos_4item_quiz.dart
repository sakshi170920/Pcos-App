import 'package:flutter/material.dart';

class PCOSQuiz extends StatefulWidget {

  static const String id = 'pcos_4item_quiz';
  @override
  _PCOSQuizState createState() => _PCOSQuizState();
}

class _PCOSQuizState extends State<PCOSQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text('PCOS Diagnosis')),
      ),
      body : Container(
        child : Column(
            children: <Widget>[
              SizedBox(height:250),
              Center(
                child: ButtonTheme(
                  minWidth: 150.0,
                  height: 75.0,
                  child : RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder : (context) => Questions(),
                      ));
                    },
                    color: Colors.black,
                    textColor: Colors.white,
                    child: const Text(
                      'Take Quiz!', style : TextStyle(fontSize: 20),),
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}
