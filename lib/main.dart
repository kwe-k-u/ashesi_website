import 'package:ashesi_website/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        textTheme:  TextTheme(
          bodyText2: GoogleFonts.lato(
            // color: Colors.white,
            fontWeight: FontWeight.w500
          )
        )
      ),
      home: const Homepage(),
    );
  }
}
