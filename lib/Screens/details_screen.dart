import 'package:books_reading_app/Widgets/book_rating.dart';
import 'package:books_reading_app/Widgets/round_button.dart';
import 'package:books_reading_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../Widgets/book_info.dart';
import '../Widgets/chapter_card.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  height: size.height * .4,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg.png"),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: size.height * .1,
                        ),
                        const BookInfo()
                      ],
                    ),
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: size.height * .4 - 30),
                  child: Column(
                  children: <Widget>[
                    ChapterCard(size: size),
                    ],
                  ),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
