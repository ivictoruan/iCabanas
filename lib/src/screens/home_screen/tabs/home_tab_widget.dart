import 'package:flutter/material.dart';
import 'package:icabannas/src/core/model/dish.dart';
import 'package:icabannas/src/core/model/menu_mode.dart';
import 'package:icabannas/src/screens/home_screen/widgets/dishes_menu_widget.dart';
import 'package:icabannas/src/screens/home_screen/widgets/search_field_widget.dart';
import 'package:provider/provider.dart';

class HomeTabWidget extends StatefulWidget {
  const HomeTabWidget({
    Key? key,
  }) : super(key: key);

  @override
  _HomeTabWidgetState createState() => _HomeTabWidgetState();
}

class _HomeTabWidgetState extends State<HomeTabWidget> {
  final TextEditingController _searchController = TextEditingController();
  List<Dish> _filteredDishes = [];

  @override
  void initState() {
    super.initState();

    final MenuModel _menuModel = Provider.of<MenuModel>(context, listen: false);
    _filteredDishes = [..._menuModel.menu];

    _searchController.addListener(() {
      if (_searchController.text.isEmpty) {
        setState(() {
          // Se não há texto, não filtra
          _filteredDishes = [..._menuModel.menu];
        });
      } else {  
        setState(() {
          _filteredDishes = _menuModel.menu
          .where((dish) => dish.dishName
              .toLowerCase()
              .contains(_searchController.text.toLowerCase()))
              .toList();
        });
      }
    });
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
        children: <Widget>[
          Text(
            "Comidas\nDeliciosas", // fazer uma animação de texto aqui!
            style: Theme.of(context).textTheme.headline1?.copyWith(
                  fontSize: MediaQuery.of(context).size.width * 0.085,
                  color: const Color(0xFF000000),
                  height: 1.2,
                ),
          ),
          SearchFieldWidget(searchControler: _searchController,),
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
