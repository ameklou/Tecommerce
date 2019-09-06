import 'package:flutter/material.dart';
import 'package:tshop/screens/main_page.dart';
import 'package:tshop/utils/const.dart';
import 'package:tshop/widgets/wine_card.dart';
import 'package:tshop/screens/wine_details.dart';

import 'model/wine.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Thabitha shop',
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}



