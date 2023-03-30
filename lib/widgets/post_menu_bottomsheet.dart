
import 'package:flutter/material.dart';

import '../model/bottomsheet_model.dart';
import 'custom_circle_button.dart';

class PostMenuBottomSheet{
  static bottomSheet(BuildContext context){
    showBottomSheet(
        enableDrag: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 10),
                Container(
                  height: 2,
                  width: 40,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black87, width: 3)),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    customCircleButton(
                        icon: Icons.share_outlined, text: "Share"),
                    customCircleButton(icon: Icons.link, text: "Link"),
                    customCircleButton(
                        icon: Icons.bookmark_border, text: "Save"),
                    customCircleButton(
                        icon: Icons.qr_code_scanner_outlined, text: "Qr Code"),
                  ],
                ),
                const SizedBox(height: 10),
                Divider(color: Colors.grey.withOpacity(0.3)),
                ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 10),
                      child: Row(
                        children: [
                          Icon(BottomSheetModel.data[index].iconData),
                          const SizedBox(width: 10),
                          Text(BottomSheetModel.data[index].label.toString(),style: TextStyle(
                              fontWeight: FontWeight.w700
                          ),)
                        ],
                      ),
                    );
                  },
                  itemCount: BottomSheetModel.data.length,
                  shrinkWrap: true,
                )
              ],
            ),
          );
        });
  }
}