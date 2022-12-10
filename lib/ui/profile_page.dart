import 'package:flutter/material.dart';

import '../strings.dart';
import 'bottom_sheet.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomSheet(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Row(
          children: const [
            Icon(
              Icons.lock,
              color: Colors.black,
              size: 20,
            ),
            SizedBox(width: 4),
            Text(
              "jayuu_r",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 22,
                  color: Colors.black),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black,
            ),
            Spacer(),
            Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
            SizedBox(width: 20),
            Icon(Icons.menu, color: Colors.black),
            SizedBox(width: 6)
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 16, top: 10),
            child: Row(
              children: [
                Container(
                  height: 90,
                  width: 90,
                  padding: const EdgeInsets.all(1.5),
                  margin: const EdgeInsets.only(top: 4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.withOpacity(0.4),
                  ),
                  child: Container(
                    height: 86,
                    width: 86,
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage(Strings.post2),
                    ),
                  ),
                ),
                const SizedBox(width: 50),
                profileDetails(text: "10", label: "Posts"),
                const SizedBox(width: 30),
                profileDetails(text: "1000", label: "Followers"),
                const SizedBox(width: 30),
                profileDetails(text: "100", label: "Following"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Spider Man",
                    style: TextStyle(fontWeight: FontWeight.w800)),
                SizedBox(height: 2),
                SizedBox(
                  width: 200,
                  child: Text(
                      "I’m ready to power up this Halloween party.Secrets have a cost, they are not for freedom.",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.w500)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          editProfileButton(),
          // highLights()
        ],
      ),
    );
  }

  Widget editProfileButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Text(
                "Edit Profile",
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
              ),
            ),
          ),
          const SizedBox(width: 4),
          Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.grey.withOpacity(0.2)),
            child: const Icon(Icons.person_add, size: 18),
          )
        ],
      ),
    );
  }

  Widget profileDetails({required String text, required String label}) {
    return Column(
      children: [
        Text(text,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w900)),
        const SizedBox(height: 2),
        Text(label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w900))
      ],
    );
  }
}
