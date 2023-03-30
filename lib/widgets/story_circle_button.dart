import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StoryCircleButton extends StatelessWidget {
  final String? img;
  final double height;
  final double width;
   double padding;

  StoryCircleButton(
      {super.key, required this.img, required this.width, required this.height,this.padding = 2});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery
          .of(context)
          .size
          .height * height,
      width: MediaQuery
          .of(context)
          .size
          .width * width,
      decoration: BoxDecoration(
        // color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.red, width: 2)),
      child: Padding(
        padding: EdgeInsets.all(padding!),
        child: CircleAvatar(
          backgroundColor: Colors.black12,
          backgroundImage: AssetImage(img!),
          // backgroundImage: AssetImage(
          //   Strings.image1,
          // ),
        ),
      ),
    );
  }
}


