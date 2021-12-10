import 'package:flutter/material.dart';

import 'get_started_screen.dart';

class ICabannasApp
 extends StatelessWidget {
  const ICabannasApp
  ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ICabanãs",
      home: const GetStartedScreen(),
      theme: ThemeData(
        primaryColor: const Color(0xFFFA4A0C),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: "SFPro",
            fontSize: 65,
            color: Color(0xFFF6F6F9)
          ),
          button: TextStyle(
            fontFamily: "SFPro",
            fontSize: 17,
            color: Color(0xFFF6F6F9)
          ),
        ),
      ),
    );
  }
}