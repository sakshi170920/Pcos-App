import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pcos_app/homepage.dart';
import 'Question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
QuizBrain quizBrain = QuizBrain();
class MainQuiz extends StatefulWidget {
  static const id = "MainQuiz";
  @override
  _MainQuizState createState() => _MainQuizState();
}

class _MainQuizState extends State<MainQuiz> {
  static List<String> answers = quizBrain.getAnswer();
  List<bool> selected = new List.filled(answers.length,false);
  void checkStatus()
  {
    List<int> score = [];
    for(int i = 0 ; i < selected.length ; i++)
      {
        if(selected[i] == true)
          score.add(i);
      }
    quizBrain.scoreCalculator(score);
    print(quizBrain.result.toString());

    setState(() {
        if (quizBrain.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finished!',
          buttons: [
            DialogButton(
              child: Text(
                "Close",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: (){
                Navigator.pushReplacementNamed(context , HomePage.id);
              },
            ),
          ],
          desc: quizBrain.result>=2 ? 'You are Consistent with Diagnosis of PCOS' : 'You are not consistent with Diagnosis of PCOS',
        ).show();
        quizBrain.reset();
      }
        else {

          quizBrain.nextQuestion();

        }
        answers = quizBrain.getAnswer();
        selected = List.filled(answers.length,false);

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    quizBrain.getQuestionText(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 10,

              child: ListView.builder(itemBuilder: (BuildContext context , int index)
              {
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      selected[index] = ! selected[index];

                    });
                  },
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.all(10),
                      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 50),
                      decoration: BoxDecoration(
                        color: selected[index] ? Colors.blueAccent : Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                          child: Text(
                            answers[index],style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,
                          ),
                      ),
                  ),
                );
              },
                itemCount: answers.length,
              ),
            ),
            Expanded(
              flex: 3,
              child: GestureDetector(

                onTap: (){
                  setState(() {
                    checkStatus();
                  });
                  },
                child: Container(
                  margin: EdgeInsets.all(30),
                  padding: EdgeInsets.all(10),


                  child: Center(
                    child: Text("Go to next Question",textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontSize: 20),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(80),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
//class QuizPage extends StatefulWidget {
//  @override
//  _QuizPageState createState() => _QuizPageState();
//}
//
//class _QuizPageState extends State<QuizPage> {
//  List<Icon> scoreKeeper = [];
//
////  void checkAnswer(bool userPickedAnswer) {
////    bool correctAnswer = quizBrain.getCorrectAnswer();
//
//    setState(() {
//      //TODO: Step 4 - Use IF/ELSE to check if we've reached the end of the quiz. If so,
//      //On the next line, you can also use if (quizBrain.isFinished()) {}, it does the same thing.
//      if (quizBrain.isFinished() == true) {
//        //TODO Step 4 Part A - show an alert using rFlutter_alert,
//
//        //This is the code for the basic alert from the docs for rFlutter Alert:
//        //Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.").show();
//
//        //Modified for our purposes:
//        Alert(
//          context: context,
//          title: 'Finished!',
//          desc: 'You\'ve reached the end of the quiz.',
//        ).show();
//
//        //TODO Step 4 Part C - reset the questionNumber,
//        quizBrain.reset();
//
//        //TODO Step 4 Part D - empty out the scoreKeeper.
//        scoreKeeper = [];
//      }
//
//      //TODO: Step 6 - If we've not reached the end, ELSE do the answer checking steps below 👇
//      else {
//        if (userPickedAnswer == correctAnswer) {
//          scoreKeeper.add(Icon(
//            Icons.check,
//            color: Colors.green,
//          ));
//        } else {
//          scoreKeeper.add(Icon(
//            Icons.close,
//            color: Colors.red,
//          ));
//        }
//        quizBrain.nextQuestion();
//      }
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Column(
//      mainAxisAlignment: MainAxisAlignment.spaceBetween,
//      crossAxisAlignment: CrossAxisAlignment.stretch,
//      children: <Widget>[
//        Expanded(
//          flex: 5,
//          child: Padding(
//            padding: EdgeInsets.all(10.0),
//            child: Center(
//              child: Text(
//                quizBrain.getQuestionText(),
//                textAlign: TextAlign.center,
//                style: TextStyle(
//                  fontSize: 25.0,
//                  color: Colors.white,
//                ),
//              ),
//            ),
//          ),
//        ),
//        Expanded(
//          child: Padding(
//            padding: EdgeInsets.all(15.0),
//            child: FlatButton(
//              textColor: Colors.white,
//              color: Colors.green,
//              child: Text(
//                'True',
//                style: TextStyle(
//                  color: Colors.white,
//                  fontSize: 20.0,
//                ),
//              ),
//              onPressed: () {
//                //The user picked true.
//                checkAnswer(true);
//              },
//            ),
//          ),
//        ),
//        Expanded(
//          child: Padding(
//            padding: EdgeInsets.all(15.0),
//            child: FlatButton(
//              color: Colors.red,
//              child: Text(
//                'False',
//                style: TextStyle(
//                  fontSize: 20.0,
//                  color: Colors.white,
//                ),
//              ),
//              onPressed: () {
//                //The user picked false.
//                checkAnswer(false);
//              },
//            ),
//          ),
//        ),
//        Row(
//          children: scoreKeeper,
//        )
//      ],
//    );
//  }
//}
//
