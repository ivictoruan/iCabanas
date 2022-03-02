import 'package:flutter/material.dart';
import 'package:icabannas/src/core/model/dish.dart';

class MenuModel extends ChangeNotifier {
  final List<Dish> _menu = [];
  final List<Dish> _filteredMenu = [];

  List<Dish> initialDishes = [];

  MenuModel({List<Dish> dishes = const []}) {
    _menu.addAll(dishes);
  }

  List<Dish> get menu =>
      List.unmodifiable(_menu); // devolve uma referencia nao modificavel

  List<Dish> get filteredMenu => List.unmodifiable(_filteredMenu);

  // MÉTODO QUE FILTRA O MENU (REGRA DE NEGÓCIO)
  void filterMenu(String dishName) {
    if (dishName.trim() == "") {
      _filteredMenu
        ..clear()
        ..addAll(_menu);
    } else {
      // limpa a o array, adicionando todos os pratos que estão no menu, recebendo o argumento, filtra o nome letra minuscula
      // verificando qual contém o nome (novamente minusculo)
      _filteredMenu
        ..clear()
        ..addAll(_menu.where((dish) =>
            dish.dishName.toLowerCase().contains(dishName.toLowerCase())));
    }
  }

  // MÉTODO QUE ADD UM NOVO ITEM NO MENU
  void addDish(Dish dish) {
    _menu.add(dish);
    notifyListeners(); // método ChangeNotifier
  }
}
