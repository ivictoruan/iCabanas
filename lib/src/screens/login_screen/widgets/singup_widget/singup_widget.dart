import 'package:flutter/material.dart';

class SingupWidget extends StatelessWidget {
  final Color foregroundColor;
  final Color backgroundColor;
  
  const SingupWidget(
    { Key? key,
    this.foregroundColor = Colors.black,
    this.backgroundColor = Colors.white,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text("Singup Widget"),
      ],
    );
  }
}