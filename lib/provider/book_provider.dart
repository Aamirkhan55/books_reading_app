import 'dart:convert';
import 'package:books_reading_app/model/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' show rootBundle;
class BookProvider with ChangeNotifier{

  String? data;

  late User user;

  Future<void> getUsersData() async {
    data = await rootBundle.loadString('assets/data/users.json');

    if (data != null) {
      final structuredData = jsonDecode(data!)["users"]["123456"];

      user = User.fromJson(structuredData);
    }
  }

}