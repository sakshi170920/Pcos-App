import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pcos_app/features/blog.dart';
class BlogSection extends StatelessWidget {
  final titles = ["Cycle Phases and Periods","Reproductive Health and Care","Why Sleep matters for Female Health","Finding your Harmony"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[70],
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: titles.length,
            itemBuilder: (BuildContext context , int index){
            return Container(

              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 0,vertical: 10),
              height: 200,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(titles[index],style: TextStyle(fontWeight: FontWeight.bold
                        ),

                        ),
                      ),

                    ),
                  ),
                  Expanded(
                  flex: 3,
                  child: ListView.builder(//each row

                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context , int index){
                      return Container(
                        width: 200,
                        margin: EdgeInsets.all(8),

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context,SleepBlog.id);
                          },
                          child: Image(image: AssetImage("assets/images/pcos${index+1}.jpg"),
                          ),
                        ),
                      );
                      },
                  ),
                ),

                ],
              ),
            );
            },


        ),
      ),
    );
  }
}
