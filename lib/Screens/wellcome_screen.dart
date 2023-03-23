import 'package:flutter/material.dart';

import '../Widgets/round_button.dart';
import 'home_screen.dart';

class WellcomeScreen extends StatelessWidget {
  const WellcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Bitmap.png'),
            fit: BoxFit.fill,
            ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
               children: [
                TextSpan(
                   text: 'Book',
                style: Theme.of(context).textTheme.displayLarge,
                ),
                const TextSpan(
                   text: 'App.',
                   style: TextStyle(
                    fontWeight: FontWeight.bold,
                   ),
                ),
               ]
              )
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: RoundButton(
                text: "Start Reading",
                fontSize: 20,
                press: () => Navigator.push(context, 
                MaterialPageRoute(builder: ( context)=> const HomeScreen())),
                ),
            ),
            ],
        ),
      ),
    );
  }
}

