import 'package:flutter/material.dart';

import '../constants.dart';

class ChapterCard extends StatelessWidget {
  const ChapterCard({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: const EdgeInsets.only(bottom: 16),
      width: size.width - 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38.5),
        boxShadow: [
          BoxShadow(
          offset: const Offset(0, 10),
          blurRadius: 33,
          color: const Color(0xFFD3D3D3).withOpacity(.84),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Chapter 1 : Money',
                  style: TextStyle(
                    fontSize: 16,
                    color: kLigthBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'Life is about change',
                  style: TextStyle(color: kLigthBlackColor),
                ),
              ],
            ),
            ),
            const Spacer(),
            IconButton(
             onPressed: () {}, 
            icon: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),)
        ],
      )
      );
  }
}

