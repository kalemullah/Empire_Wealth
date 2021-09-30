import 'package:flutter/material.dart';
import 'constant.dart';
class Button extends StatelessWidget {
  final String txt;
  final screen;
  const Button(this.screen,this.txt);



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 45,right: 45,bottom: 10),
      height: KcontainerHeight,
      width: KcontainerWidth,
      child: Expanded(
        child: Container(
              decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.black,
              image: const DecorationImage(
              image:AssetImage("assects/btn.jpg"),
              fit:BoxFit.cover
              )),
          child: GestureDetector(

          onTap: () {
            Navigator.pushNamed(context, screen);
          },
          child: Center(child: Text(txt, style: KbuttonTextstyle),),
        ),)
      ),
    );
  }
}