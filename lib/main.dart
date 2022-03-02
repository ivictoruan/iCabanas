import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:icabannas/src/core/model/menu_model.dart';
import 'package:icabannas/src/icabannas_app.dart';
import 'package:provider/provider.dart';

import 'src/core/model/dish.dart';

void main() {
  // removida a cor cinza de overlay da status bar do Android
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  final List<Dish> initialDishes = [
    Dish(
      dishName: "Veggie tomato mix",
      dishPrice: "R\$ 97,00",
      dishImage: "veggie_tomato",
    ),
    Dish(
      dishName: "Egg and cucumber",
      dishPrice: "R\$ 143,00",
      dishImage: "egg_cucmber",
    ),
    Dish(
      dishName: "Fried Chicken m.",
      dishPrice: "R\$ 42,50",
      dishImage: "fried_chicken",
    ),
    Dish(
      dishName: "Moi-moi and ekpa.",
      dishPrice: "R\$ 220,00",
      dishImage: "moimoi",
    ),
  ];

  runApp(
    ChangeNotifierProvider(
      create: (_) => MenuModel(dishes: initialDishes), // dishes: initialDishes
      child: const ICabannasApp(),
    ),
  );
}
