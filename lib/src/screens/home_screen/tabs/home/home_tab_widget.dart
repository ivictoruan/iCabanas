import 'package:flutter/material.dart';
import 'package:icabannas/src/core/model/menu_model.dart';
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
  bool loading = false;

  @override
  void initState() {
    super.initState();

    // if(){}

    final MenuModel _menuModel = Provider.of<MenuModel>(context, listen: false);

    _searchController.addListener(() {
      if (_searchController.text.isEmpty) {
        setState(() {
          // Se não há texto, não filtra
          _menuModel.filterMenu("");
        });
      } else {
        setState(() {
          // Se há texto, filtra
          _menuModel.filterMenu(_searchController.text);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final _maxWidth = MediaQuery.of(context).size.width;

    if(loading==true){
      return const Center(child: CircularProgressIndicator());
    }

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
          SearchFieldWidget(
            searchControler: _searchController,
          ),
          const Expanded(
            child: DishesMenuWidget(),
          ),
        ],
      ),
    );
  }
}
