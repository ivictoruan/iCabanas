import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  // final String email;
  // final String password;
  final Color foregroundColor;
  final Color backgroundColor;

  const LoginWidget(
    { Key? key,
    this.foregroundColor = const Color(0xFFF6F6F9), 
    this.backgroundColor = const Color(0xFFFA4A0C),
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // final double screenWidth = MediaQuery.of(context).size.width;
    // final double screenHeight = MediaQuery.of(context).size.height;

    return Column(
     children: const [
      Text("Widget Login"),
      // Text("Address"),
      // Text("Password"),
     ],
    );
  }
}