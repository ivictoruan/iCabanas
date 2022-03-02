import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final Color foregroundColor;
  final Color backgroundColor;
  final VoidCallback onPressed;

  const ActionButton(
    this.text, {
    Key? key,
    this.foregroundColor = const Color(0xFFF6F6F9),
    this.backgroundColor = const Color(0xFFFA4A0C),
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _screenWidth = MediaQuery.of(context).size.width;
    final double _screenHeight = MediaQuery.of(context).size.height;
    return Center(
      child: TextButton(
        onPressed: onPressed, // método
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
            vertical: _screenHeight * 0.03,
            horizontal: _screenWidth * 0.28,
          ),
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.all(Radius.circular(_screenHeight * 0.04)),
            color: backgroundColor,
          ),
          child: Text(
            text,
            style: TextStyle(
              color: foregroundColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
          ),
        ),
      ),
    );
  }
}
