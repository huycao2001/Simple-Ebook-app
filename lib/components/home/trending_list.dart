import 'dart:ui';

import 'package:ebook_app/constant.dart';
import 'package:ebook_app/models/trend.dart';
import 'package:ebook_app/screens/detail_screen.dart';
import 'package:flutter/material.dart';

class TrendingList extends StatelessWidget {
  const TrendingList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: trends.map((trend) {
          int index = trends.indexOf(trend);
          return InkWell(
            onTap: () {
              Navigator.push(  // Clicking the box will navigate to the book detail page. 
                context,
                MaterialPageRoute(builder: (_) => DetailScreen(trend: trend)),
              );
            },
            child: Container(
              width: 480 ,
              height: 410,
              margin: EdgeInsets.only(
                right: 20,
                left: (index == 0) ? spacer : 0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(6),
                  //   child: Image.asset(trend.image),
                    
                  // ),
                  Image(image: AssetImage(trend.image), height : 300, width: 300,),
                  SizedBox(width: 1),
                  Column(
                    children: [
                      Text(
                        trend.creator,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: darkColor,
                        ),
                      ),
                      
                      Text(
                        trend.title,
                        maxLines: 1,
                        overflow: TextOverflow.fade,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue,
                        ),
                      ),

                      Text(
                        trend.des,
                        maxLines: 1,
                        overflow: TextOverflow.fade,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black38,
                        ),
                      ),
                    SizedBox(height: spacer,)
                    ],
                    


                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
