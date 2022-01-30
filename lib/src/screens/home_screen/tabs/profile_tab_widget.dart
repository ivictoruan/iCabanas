import 'package:flutter/material.dart';

class ProfileTabWidget extends StatelessWidget {
  const ProfileTabWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
              children: const [
                Icon(Icons.person),
                Text("Build a screen to the profile here!",) 
              ]
      );
  }
}