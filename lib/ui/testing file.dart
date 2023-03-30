import 'package:flutter/material.dart';

import '../strings.dart';

class Testing extends StatefulWidget {
  const Testing({Key? key}) : super(key: key);

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          height: MediaQuery.of(context).size.height*0.2,
          width: MediaQuery.of(context).size.width*0.2,
          decoration: BoxDecoration(
              // color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.red, width: 2)),
          child: Padding(
            padding: EdgeInsets.all(2),
            child: CircleAvatar(
              backgroundColor: Colors.pink,
              backgroundImage: AssetImage(Strings.image8),

              // backgroundImage: AssetImage(
              //   Strings.image1,
              // ),
            ),
          ),
        ));
  }
}
