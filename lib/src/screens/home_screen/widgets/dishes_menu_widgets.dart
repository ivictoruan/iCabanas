import 'package:flutter/material.dart';

class DishesMenuWidget extends StatelessWidget {
  const DishesMenuWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: LayoutBuilder(builder: (context, constraints){
        final double _maxHeight = constraints.maxHeight;
        return Column(
          children: [
            Container(
              height: _maxHeight * 0.1,
              margin: EdgeInsets.only(
                top: _maxHeight * 0.08,
                bottom: _maxHeight * 0.06,
                ),
              child: TabBar(
                labelColor: const Color(0xFFFA4A0C),
                unselectedLabelColor: const Color(0xFF9A9A9D),
                indicatorColor: const Color(0xFFFA4A0C),
                labelStyle: Theme.of(context).textTheme.headline2?.copyWith(
                  fontSize: MediaQuery.of(context).size.width * 0.038,            
                  fontWeight: FontWeight.w500,
                  color: const Color(0x88000000),
                  ),
                tabs: const [
                  Tab(text: "Foods"),
                  Tab(text: "Drinks"),
                  Tab(text: "Snacks"),
                  Tab(text: "Sauce"),
                ],
              ),
            ),
          ],
        );
      })
    );
  }
}