import 'package:flutter/material.dart';
import 'package:icabannas/src/screens/login_screen/login_screen.dart';

import 'screens/get_started/get_started_screen.dart';
import 'screens/home_screen/home_screen.dart';

class ICabannasApp
 extends StatelessWidget {
  const ICabannasApp
  ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "iCabanãs",
      initialRoute: "/",
      routes:{
        "/":(context) => const GetStartedScreen(),
        "/login":(context) => const LoginScreen(),
        "/home":(context) => const HomeScreen(),
      },
      theme: ThemeData(
        
        primaryColor: const Color(0xFFFA4A0C),
        
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: "SFPro",
            fontSize: 63,
            height: 0.75,
            fontWeight: FontWeight.w800,
            color: Color(0xFFF6F6F9),
            letterSpacing: 0.9,            
          ),
          button: TextStyle(
            fontFamily: "SFPro",
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: Color(0xFFF6F6F9),
            // color: Color(0xFFFF4B3A)
          ),
          subtitle1: TextStyle(
            fontFamily: "SFPro",
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: Color(0xFF000000),
            decoration: TextDecoration.none,
          ),
        ),
        //selecionando cores para os cursores
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color(0xFFFA4A0C),
          selectionColor: Color(0xFFFA4A0C),
          selectionHandleColor: Color(0xFFFA4A0C),
        ),
        //Removendo padding do Button
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(0),
          ),
        ),
        //incluindo tema dos labels das caixas de texto do app
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(
            fontFamily: "SFPro",
            fontSize: 19,
            fontWeight: FontWeight.w600,
            color: Color(0xFF919191)),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF000000))),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFFA4A0C))), 
        ),
      ),
    );
  }
}