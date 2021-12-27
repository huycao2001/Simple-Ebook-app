import 'package:ebook_app/components/home/card_recent.dart';
// import 'package:ebook_app/components/home/search_field.dart';
import 'package:ebook_app/components/home/section_title.dart';
import 'package:ebook_app/constant.dart';
import 'package:ebook_app/models/recent.dart';
import 'package:flutter/material.dart';


class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 406 - 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40)),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SearchField(),
          SizedBox(height: spacer), // Split the app bar and the book menu
          SectionTitle(title: "Book Menu"), // Create a section title for book menu 
          SingleChildScrollView(
            scrollDirection: Axis.horizontal, // Scroll the items horizontally. 
            child: Row(
              children: recents.map((recent) {
                int index = recents.indexOf(recent);
                return CardRecent(recent, index: index);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
