import 'package:chat_application/model/post_model.dart';
import 'package:chat_application/widgets/custom_circle_button.dart';
import 'package:flutter/material.dart';

import '../strings.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  List<BottomSheetModel> data = [
    BottomSheetModel(iconData: Icons.star_border, label: "Add to favorites"),
    BottomSheetModel(iconData: Icons.person_outline, label: "Unfollow"),
    BottomSheetModel(
        iconData: Icons.info_outlined, label: "Why you're seeing this post"),
    BottomSheetModel(iconData: Icons.visibility_off_outlined, label: "Hide"),
    BottomSheetModel(
        iconData: Icons.report_gmailerrorred_outlined, label: "Report"),
  ];

  @override
  Widget build(BuildContext context) {
    PostData postData = PostData();
    return ListView.builder(
        itemCount: postData.dataList.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.transparent,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(width: 8),
                    Container(
                      height: 50,
                      width: 50,
                      padding: const EdgeInsets.all(2),
                      margin: const EdgeInsets.only(top: 6),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFF9B2282), Color(0xFFEEA863)])),
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: CircleAvatar(
                          // backgroundImage: AssetImage(Strings.image9),
                          backgroundImage: AssetImage(
                              postData.dataList[index].profilePhoto.toString()),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      postData.dataList[index].profileName.toString(),
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    InkWell(
                        onTap: () {
                          bottomSheet();
                        },
                        child: const Icon(Icons.more_vert)),
                    const SizedBox(width: 8)
                  ],
                ),
                const SizedBox(height: 4),
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                      // "https://c4.wallpaperflare.com/wallpaper/293/952/22/iron-man-marvel-comics-superhero-the-avengers-wallpaper-thumb.jpg",
                      postData.dataList[index].postPhoto.toString(),
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
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        // "1234562 likes",
                        "${postData.dataList[index].likeCounter.toString()}  likes",
                        style: const TextStyle(fontWeight: FontWeight.w800),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Text(
                            postData.dataList[index].profileName.toString(),
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
                        style: TextStyle(
                            fontWeight: FontWeight.w900, color: Colors.grey),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "31 minit ago",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 12,
                            color: Colors.grey),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          );
        });
  }

  bottomSheet() {
    return showBottomSheet(
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
                          Icon(data[index].iconData),
                          const SizedBox(width: 10),
                          Text(data[index].label.toString(),style: TextStyle(
                            fontWeight: FontWeight.w700
                          ),)
                        ],
                      ),
                    );
                  },
                  itemCount: data.length,
                  shrinkWrap: true,
                )
              ],
            ),
          );
        });
  }
}
