import 'package:flutter/material.dart';
import '../Widgets/reading_list_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
      return Scaffold(
      body: Container(
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
                    pressDetails: () {},
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
                      style: Theme.of(context).textTheme.displayMedium,
                      children: const [
                        TextSpan(
                          text: 'Best of the',
                          ),
                        TextSpan(
                          text: 'day',
                          style: TextStyle(fontWeight: FontWeight.bold)
                          ),
                        ]
                    )
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      height: 205,
                      width: double.infinity,
                      child: Stack(),
                    )
                ],
              ),
              ),
          ],
        ),
      ),
    );
  }
}
