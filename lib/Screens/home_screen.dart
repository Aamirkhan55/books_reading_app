import 'package:books_reading_app/Screens/details_screen.dart';
import 'package:books_reading_app/Widgets/book_rating.dart';
import 'package:books_reading_app/Widgets/read_button.dart';
import 'package:books_reading_app/constants.dart';
import 'package:flutter/material.dart';
import '../Widgets/reading_list_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/main_page_bg.png'),
                alignment: Alignment.topCenter,
                fit: BoxFit.fitWidth,
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: size.height * .1),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                        text: TextSpan(
                            style: Theme.of(context).textTheme.displaySmall,
                            children: const [
                          TextSpan(text: 'What are you \n reading'),
                          TextSpan(
                              text: 'today?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ])),
                  ),
                  const SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ReadingListCard(
                          image: 'assets/images/book-1.png',
                          title: 'Crushing & Influence',
                          author: 'Gray Venchuk',
                          rating: 4.9,
                          pressDetails: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(
                                builder: (context) {
                                 return const DetailScreen();
                            }));
                          },
                          pressRead: () {},
                        ),
                        ReadingListCard(
                          image: 'assets/images/book-2.png',
                          title: 'Top 10 Hack',
                          author: 'Herman Joel',
                          rating: 4.8,
                          pressDetails: () {},
                          pressRead: () {},
                        ),
                        const SizedBox(width: 30),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                            text: TextSpan(
                                style:
                                    Theme.of(context).textTheme.displayMedium,
                                children: const [
                              TextSpan(
                                text: 'Best of the',
                              ),
                              TextSpan(
                                  text: 'day',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ])),
                        bestOfTheDayCard(size, context),
                        RichText(
                            text: TextSpan(
                                style: Theme.of(context).textTheme.displayLarge,
                                children: const [
                              TextSpan(
                                text: 'Continue',
                              ),
                              TextSpan(
                                  text: 'Reading...',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                            ])),
                        const SizedBox(height: 20),
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(0, 10),
                                  blurRadius: 33,
                                  color:
                                      const Color(0xFFD3D3D3).withOpacity(.84),
                                ),
                              ]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(38.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30, right: 20),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: const <Widget>[
                                              Text(
                                                'Crushing & Influence',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                ),
                                                Text(
                                                  'Gary Venchuk',
                                                  style: TextStyle(
                                                    color: kLigthBlackColor,
                                                  ),
                                                  ),
                                                  Align(
                                                    alignment: Alignment.bottomRight,
                                                    child: Text(
                                                      'Chapter 7 of 10',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: kLigthBlackColor,
                                                      ),
                                                      ),
                                                  ),
                                                  SizedBox(height: 5),

                                            ],
                                          ),),
                                        Image.asset(
                                          'assets/images/book-1.png',
                                          width: 55,
                                          )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 7,
                                  width: size.width * .65,
                                  decoration: BoxDecoration(
                                      color: kProgressIndictor,
                                      borderRadius: BorderRadius.circular(7),
                                      ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container bestOfTheDayCard(Size size, BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 205,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding:
                    EdgeInsets.only(left: 24, top: 24, right: size.width * .35),
                height: 185,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFEAEAEA).withOpacity(.45),
                  borderRadius: BorderRadius.circular(29),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'New York Time Best For 11th March 2023',
                      style: TextStyle(
                        fontSize: 12,
                        color: kLigthBlackColor,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'How To Win \nFriend And Influence',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    const Text(
                      'Gary Venchuk',
                      style: TextStyle(color: kLigthBlackColor),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: const <Widget>[
                        BookRating(
                          score: 4.9,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                              'When the earth was flat and everyone wanted to win the game of best and people...',
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 12,
                                color: kBlackColor,
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              )),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              "assets/images/book-3.png",
              width: size.width * .35,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .3,
              child: ReadButton(text: "read", radius: 24, press: () {}),
            ),
          ),
        ],
      ),
    );
  }
}
