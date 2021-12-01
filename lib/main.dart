import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_4/constants.dart';
// ignore: unused_import
import 'package:flutter_4/screens/home_screen.dart';
import 'package:flutter_4/widgets/main/main_section.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real Estate',
      theme:  ThemeData.dark().copyWith(
        primaryColor: kBgColor,
        scaffoldBackgroundColor: kBgColor,
        canvasColor: kBgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: Colors.white)
        .copyWith(
          bodyText1: const TextStyle(color: kBodyTextColor),
          bodyText2: const TextStyle(color: kBodyTextColor),
        ),
      ),
      home: const  MainSection(),
    );
  }
}