import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class SleepBlog extends StatelessWidget {
  static const id = "SleepBlog";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        margin: EdgeInsets.all(20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                fit: FlexFit.loose,
                flex: 3,
                child : Text("Sleeping your way into a good life!"
                ,style: TextStyle(fontFamily: 'SegoeUI-Bold',fontSize: 30,fontWeight: FontWeight.bold,decoration: TextDecoration.none,color: Colors.black),),
              ),
              Flexible(
                fit: FlexFit.loose,

                child: Container(
                  padding: EdgeInsets.all(20),
                    child: Image(image: AssetImage('assets/images/sleep.png'),)),
              ),
              Flexible(
                fit: FlexFit.loose,

                child : Text("The power of sleep is often underestimated.\n\nLittle do people know the importance of a quality slumber. It is an integral aspect of PCOS recovery and must"
                    " not be overlooked. The lack of it might leave you feeling tired and bloated, which might stick around throughout your day.\nSleep has a strong link with your body’s weight loss. (Here, by weight "
                    "loss we are referring to fat loss, improving body composition and bone weight and not just losing kilograms on your weighing scale!)\nHere’s how!\nLeptin and"
                    " ghrelin are the two hormones at play!\n\n"
                "A few ‘side- effects’ include –\nIncreased sugar cravings,\nmood swings,\nuncontrollable hunger pangs,\nhormonal imbalance,\ndecreased insulin "
                    "sensitivity,\nstress and anxiety\nHow does PCOS interfere with sleep?"
                  ,style: TextStyle(fontSize: 20,decoration: TextDecoration.none,color: Colors.black),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
