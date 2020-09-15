import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pcos_app/Quiz/MainQuiz.dart';

class WelcomePCOSQuiz extends StatefulWidget {
  static const String id = 'pcos_4item_quiz';
  @override
  _WelcomePCOSQuizState createState() => _WelcomePCOSQuizState();
}

class _WelcomePCOSQuizState extends State<WelcomePCOSQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body : Container(
        child : Column(
            children: <Widget>[
              SizedBox(height:250),

              Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child: Center(child:
              Text('Take a small quiz on PCOS Diagnosis for personalized Experience !',textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'SegoeUI-Bold',fontSize: 20,fontWeight: FontWeight.bold,decoration: TextDecoration.none,color: Colors.black),),
              ),
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,borderRadius: BorderRadius.circular(70)),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(40),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, MainQuiz.id);
                    },
                    child: Text(
                      'Take Quiz!', style : TextStyle(fontSize: 20,color: Colors.white)),
                  ),
                ),
              ),

            ]
        ),
      ),
    );
  }
}
