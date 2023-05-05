import 'package:books_reading_app/Widgets/book_rating.dart';
import 'package:books_reading_app/Widgets/round_button.dart';
import 'package:books_reading_app/constants.dart';
import 'package:flutter/material.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ChapterCard(
                      name: 'Money' , 
                      tag: "Life is about change", 
                      chapterNumber: 1, 
                      press: () {},
                      ),
                    ChapterCard(
                      name: 'Power' , 
                      tag: "Everything loves power", 
                      chapterNumber: 2, 
                      press: () {},
                      ),
                    ChapterCard(
                      name: 'Influence' , 
                      tag: "Influence easily like never before", 
                      chapterNumber: 3, 
                      press: () {},
                      ),
                     ChapterCard(
                      name: 'Win' , 
                      tag: "Winning what is matters", 
                      chapterNumber: 4, 
                      press: () {},
                      ), 
                    const SizedBox(height: 10),      
                    ],
                  ),
                  ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                    style: Theme.of(context).textTheme.displayLarge,
                    children: const [
                      TextSpan(
                        text: "You might also",
                      ),
                      TextSpan(
                        text: 'like',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )
                      )
                    ]
                  )),
                  const SizedBox(height: 10),
                  Stack(
                    children: [
                      Container(
                        height: 180,
                        width: double.infinity,
                      ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.only(left: 24, top: 24, right: 150),
                        height: 160,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: const Color(0xFFFFF8F9),
                        ),
                         child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text:const TextSpan(
                                style: TextStyle(
                                  color: kBlackColor,
                                  ),
                                children: [
                                  TextSpan(
                                    text: 'How To Win \nFriends & Influence',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Gary Venchuk',
                                    style: TextStyle(
                                      color: kLigthBlackColor,
                                      ),
                                  ),
                                  ],
                                  ),
                                  ),
                                  Row(
                                    children: const <Widget>[
                                      BookRating(
                                        score: 4.9,
                                        ),
                                    SizedBox(width: 20), 
                                    Expanded(
                                      child : RoundButton(
                                        text: 'Read',
                                        verticlePadding: 10,
                                        ),
                                      ) 
                                    ],
                                  )
                          ],
                         ),
                      ),
                      ), 
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Image.asset(
                        'assets/images/book-3.png',
                         width: 150,
                        ),
                    ),   
                    ],
                  )
                ],
              ),
              ),
              const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
