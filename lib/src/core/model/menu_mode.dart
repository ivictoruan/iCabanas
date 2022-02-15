import 'package:flutter/material.dart';
import 'package:icabannas/src/core/model/dish.dart';

class MenuModel extends ChangeNotifier{
  final List<Dish> _menu = [];

  List<Dish> initialDishes = [];

  // MenuModel(List<Dish> dishes = const []){
  //   _menu.addAll(dishes);

  // }

  List<Dish> get menu => List.unmodifiable(_menu);
  
  void addDish(Dish dish){
    _menu.add(dish);
    notifyListeners();
  }

}
