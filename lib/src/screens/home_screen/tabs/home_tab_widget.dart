import 'package:flutter/material.dart';
import 'package:icabannas/src/core/model/dish.dart';
import 'package:icabannas/src/screens/home_screen/widgets/dishes_menu_widgets.dart';

class HomeTabWidget extends StatefulWidget {
  final List<Dish> dataDishes;
  const HomeTabWidget({ 
    Key? key, 
    required this.dataDishes, 
     
    }) : super(key: key);

  @override
  _HomeTabWidgetState createState() => _HomeTabWidgetState();
}

class _HomeTabWidgetState extends State<HomeTabWidget> {
  List<Dish> _filteredDishes = [];

  @override  
  void initState() {
    super.initState();
    _filteredDishes = [...widget.dataDishes];
  }

  
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
        
        Expanded(
          child: DishesMenuWidget(            
            dataDishes: _filteredDishes,
          ),
        ),
        ],
      ),

      
    );
  }
}