import 'package:flutter/material.dart';

class HomeTabWidget extends StatefulWidget {
  const HomeTabWidget({ Key? key }) : super(key: key);

  @override
  _HomeTabWidgetState createState() => _HomeTabWidgetState();
}

class _HomeTabWidgetState extends State<HomeTabWidget> {
  @override
  Widget build(BuildContext context) {
    final _maxWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
        left: _maxWidth * 0.1,
        right: _maxWidth * 0.1,
        top: _maxWidth * 0.03,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Delicious\nfood for you",
            style: Theme.of(context).textTheme.headline1?.copyWith(
              fontSize: MediaQuery.of(context).size.width * 0.085,
              color: const Color(0xFF000000),
              height: 1.2,
            ),
          ),
        ],
      ),

      
    );
  }
}