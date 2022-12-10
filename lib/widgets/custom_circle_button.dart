import 'package:flutter/material.dart';

Widget customCircleButton({
  required IconData icon,
  required String text,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle, border: Border.all(color: Colors.black)),
        padding:
            const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
        child: Icon(icon, size: 30),
      ),
      const SizedBox(height: 6),
      Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w700),
      )
    ],
  );
}

// ignore: camel_case_types
class BottomSheetModel {
  IconData? iconData;
  String? label;

  BottomSheetModel({this.iconData, this.label});


}
