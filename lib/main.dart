import 'package:flutter/material.dart';

import 'Screens/wellcome_screen.dart';
import 'constants.dart';

void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
       title: 'Book App',
       theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(
          displayColor: kBlackColor,
        )
       ),
       home: const WellcomeScreen(),
    );
  }
}
