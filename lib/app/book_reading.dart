import 'package:books_reading_app/Screens/wellcome_screen.dart';
import 'package:books_reading_app/constants.dart';
import 'package:flutter/material.dart';

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
