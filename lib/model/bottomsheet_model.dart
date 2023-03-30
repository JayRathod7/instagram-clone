import 'package:flutter/material.dart';

class BottomSheetModel {
  IconData? iconData;
  String? label;

  BottomSheetModel({this.iconData, this.label});

  static List<BottomSheetModel> data = [
    BottomSheetModel(iconData: Icons.star_border, label: "Add to favorites"),
    BottomSheetModel(iconData: Icons.person_outline, label: "Unfollow"),
    BottomSheetModel(
        iconData: Icons.info_outlined, label: "Why you're seeing this post"),
    BottomSheetModel(iconData: Icons.visibility_off_outlined, label: "Hide"),
    BottomSheetModel(
        iconData: Icons.report_gmailerrorred_outlined, label: "Report"),
  ];
}
