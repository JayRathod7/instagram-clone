import 'package:chat_application/model/search_model.dart';
import 'package:chat_application/strings.dart';
import 'package:chat_application/ui/bottom_sheet.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    SearchImgBox searchImgBox = SearchImgBox();
    return Scaffold(
        bottomNavigationBar: const CustomBottomSheet(),
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Container(
              height: 40,
              padding: const EdgeInsets.only(left: 14, right: 14),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  const Icon(Icons.search, color: Colors.black, size: 20),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Colors.black.withOpacity(0.5))),
                    ),
                  ),
                ],
              ),
            )),
        body: GridView.builder(
          itemCount: searchImgBox.imgBox.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 1.9,
            mainAxisSpacing: 1.9,
          ),
          itemBuilder: (context, index) {
            return Container(
              width: double.infinity,
              color: Colors.grey.withOpacity(0.4),
              child: Image.asset(
                  searchImgBox.imgBox[index].img.toString(),
                  fit: BoxFit.fitWidth),
            );
          },
        ));
  }
}
