import 'package:chat_application/model/post_model.dart';
import 'package:chat_application/widgets/post_menu_bottomsheet.dart';
import 'package:chat_application/widgets/story_circle_button.dart';
import 'package:flutter/material.dart';

import '../strings.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: PostDetailsModel.dataList.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.transparent,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                postHeading(index),
                const SizedBox(height: 4),
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                      // "https://c4.wallpaperflare.com/wallpaper/293/952/22/iron-man-marvel-comics-superhero-the-avengers-wallpaper-thumb.jpg",
                      PostDetailsModel.dataList[index].postPhoto.toString(),
                      fit: BoxFit.cover),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    const SizedBox(width: 8),
                    const Icon(Icons.favorite, color: Colors.red),
                    const SizedBox(width: 10),
                    Image.asset(
                      Strings.comment,
                      height: 26,
                      color: Colors.black,
                    ),
                    const SizedBox(width: 10),
                    const Icon(Icons.send_outlined),
                    const Spacer(),
                    const Icon(Icons.bookmark_border),
                    const SizedBox(width: 8),
                  ],
                ),
                const SizedBox(height: 10),
                postDescription(index),
                const SizedBox(height: 20),
              ],
            ),
          );
        });
  }

  Widget postDescription(index) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            // "1234562 likes",
            "${PostDetailsModel.dataList[index].likeCounter.toString()}  likes",
            style: const TextStyle(fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(
                PostDetailsModel.dataList[index].profileName.toString(),
                style: const TextStyle(fontWeight: FontWeight.w800),
              ),
              const SizedBox(width: 4),
              const Text(
                "Iron Man is a 2008 American superhero ",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            "View all comments",
            style: TextStyle(fontWeight: FontWeight.w900, color: Colors.grey),
          ),
          const SizedBox(height: 4),
          const Text(
            "31 minit ago",
            style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: 12, color: Colors.grey),
          )
        ],
      ),
    );
  }

  Widget postHeading(index) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // const SizedBox(width: 8),
        StoryCircleButton(
            img: PostDetailsModel.dataList[index].profilePhoto.toString(),
            width: 0.2,
            height: 0.06),
        // Container(
        //   height: 50,
        //   width: 50,
        //   padding: const EdgeInsets.all(2),
        //   margin: const EdgeInsets.only(top: 6),
        //   decoration: const BoxDecoration(
        //       shape: BoxShape.circle,
        //       gradient: LinearGradient(
        //           begin: Alignment.topCenter,
        //           end: Alignment.bottomCenter,
        //           colors: [Color(0xFF9B2282), Color(0xFFEEA863)])),
        //   child: Container(
        //     padding: const EdgeInsets.all(2),
        //     decoration: const BoxDecoration(
        //         color: Colors.white, shape: BoxShape.circle),
        //     child: CircleAvatar(
        //       // backgroundImage: AssetImage(Strings.image9),
        //       backgroundImage: AssetImage(
        //           postData.dataList[index].profilePhoto.toString()),
        //     ),
        //   ),
        // ),

        Text(
          PostDetailsModel.dataList[index].profileName.toString(),
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        const Spacer(),
        InkWell(
            onTap: () {
              PostMenuBottomSheet.bottomSheet(context);
            },
            child: const Icon(Icons.more_vert)),
        const SizedBox(width: 8)
      ],
    );
  }
}
