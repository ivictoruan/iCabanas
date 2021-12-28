import 'package:flutter/material.dart';

class SingupWidget extends StatelessWidget {
  final Color foregroundColor;
  final Color backgroundColor;
  
  const SingupWidget(
    { Key? key,
    this.foregroundColor: Colors.white,
    this.backgroundColor: Colors.black,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      
    );
  }
}