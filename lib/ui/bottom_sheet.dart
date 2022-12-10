import 'package:chat_application/ui/home.dart';
import 'package:chat_application/ui/profile_page.dart';
import 'package:chat_application/ui/search_page.dart';
import 'package:flutter/material.dart';

enum BottomButton { home, search, video, notification, profile }

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    BottomButton bottomButton = BottomButton.home;
    return Container(
      height: 40,
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          customIconButton(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                 HomePage()), (Route<dynamic> route) => false);
                bottomButton = BottomButton.home;
              },
              icon: const Icon(Icons.home_filled),
              iconColor: Colors.black),
          customIconButton(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                    const SearchPage()), (Route<dynamic> route) => false);
                bottomButton = BottomButton.search;
              },
              icon: const Icon(Icons.search),
              iconColor: Colors.black),
          customIconButton(
              onTap: () {
                bottomButton = BottomButton.video;
              },
              icon: const Icon(Icons.movie_filter_outlined),
              iconColor: Colors.black),
          customIconButton(
              onTap: () {
                bottomButton = BottomButton.notification;
              },
              icon: const Icon(Icons.favorite),
              iconColor: Colors.black),
          InkWell(
            onTap: () {
              bottomButton = BottomButton.profile;
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                const  ProfilePage()), (Route<dynamic> route) => false);

            },
            child: const CircleAvatar(
              radius: 14,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 13,
                backgroundColor: Colors.white,
                child: Icon(Icons.person, color: Colors.black, size: 20),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget customIconButton(
      {required VoidCallback onTap,
      required Icon icon,
      required Color iconColor}) {
    return IconButton(
      onPressed: onTap,
      icon: icon,
      color: iconColor,
    );
  }
}
