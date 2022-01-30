import 'package:flutter/material.dart';

class LastOrdersTabWidget extends StatelessWidget {
  const LastOrdersTabWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
              children: const [
                Icon(Icons.calendar_today),
                Text("No history yet",) 
              ]
    );
  }
}