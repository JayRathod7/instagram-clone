import 'package:chat_application/ui/bottom_sheet.dart';
import 'package:chat_application/ui/post_screen.dart';
import 'package:flutter/material.dart';

import '../model/story_model.dart';
import '../strings.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  String? number;

  HomePage({super.key, this.number});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<GetImages> getData = [
    GetImages(Strings.post2, "Your Story"),
    GetImages(Strings.image2, "scarlett johansson"),
    GetImages(Strings.image3, "Mrunal Thakor"),
    GetImages(Strings.image4, " Alexandra Daddario"),
    GetImages(Strings.image5, "Margot Robbie"),
    GetImages(Strings.image6, "Megan Fox"),
    GetImages(Strings.image7, "Gal Gadot"),
    GetImages(Strings.image8, "Your Story"),
    GetImages(Strings.image9, "Mrunal Thakor"),
    GetImages(Strings.image10, " Alexandra Daddario"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const CustomBottomSheet(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          actions: [
            const SizedBox(width: 10),
            Container(
                width: 200,
                color: Colors.transparent,
                child: Row(
                  children: [
                    Image.asset(Strings.logo, height: 60),
                    const Icon(Icons.keyboard_arrow_down,
                        size: 20, color: Colors.black),
                  ],
                )),
            const Spacer(),
            const Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
            const SizedBox(width: 20),
            const Icon(Icons.maps_ugc_outlined, color: Colors.black),
            const SizedBox(width: 10)
          ],
        ),
        body: ListView(children: [
          Container(
              height: 100,
              margin:
                  const EdgeInsets.only(top: 8, bottom: 10, left: 4, right: 2),
              child: statusLine()),
          const Divider(height: 0),
          const PostScreen()
        ]));
  }

  Widget statusLine() {
    return ListView.builder(
        itemCount: getData.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 100,
            width: 80,
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  padding: const EdgeInsets.all(3),
                  margin: const EdgeInsets.only(top: 6),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFF9B2282), Color(0xFFEEA863)])),
                  child: Container(
                    height: 84,
                    width: 84,
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(getData[index].images!),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2, right: 4),
                  child: Text(getData[index].name!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w600)),
                )
              ],
            ),
          );
        });
  }
}
