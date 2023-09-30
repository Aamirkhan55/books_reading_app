import 'package:books_reading_app/Widgets/round_button.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'book_rating.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Crushing &',
              style:
                  Theme.of(context).textTheme.displayLarge,
            ),
            Text(
              'Influence',
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Expanded(
                  child: Column(
                    children: <Widget>[
                      Text('When the earth was flat everyone wanted to win the game of the best and people and winning with A game with all the thing you have',
                      maxLines: 5,
                      style: TextStyle(
                        color: kLigthBlackColor,
                      ),
                      ),
                      SizedBox(height: 10),
                      RoundButton(
                        text: 'Read',
                        verticlePadding: 10,
                        ),
                    ],
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {}, 
                        icon: const Icon(Icons.favorite_border),
                        ),
                      const BookRating(score: 4.9)
                    ],
                  )
              ],
            )
          ],
        )),
        Image.asset(
          'assets/images/book-1.png',
          height: 200,
        ),
      ],
    );
  }
}
