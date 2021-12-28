import 'package:flutter/material.dart';
import 'package:icabannas/src/screens/login_screen/login_screen.dart';

import 'screens/get_started/get_started_screen.dart';

class ICabannasApp
 extends StatelessWidget {
  const ICabannasApp
  ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "iCabanãs",
      initialRoute: "/",
      routes:{
        "/":(context) => const GetStartedScreen(),
        "/login":(context) => const LoginScreen(),
      },
      theme: ThemeData(
        primaryColor: const Color(0xFFFA4A0C),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: "SFPro",
            fontSize: 62,
            height: 0.8,
            // fontWeight: FontWeight.w800,
            color: Color(0xFFF6F6F9)
          ),
          button: TextStyle(
            fontFamily: "SFPro",
            fontSize: 17,
            color: Color(0xFFFF4B3A)
          ),
        ),
      ),
    );
  }
}