import 'package:flutter/material.dart';
import 'package:icabannas/src/core/model/dish.dart';
import 'package:icabannas/src/screens/home_screen/tabs/favorite_tab_widget.dart';
import 'package:icabannas/src/screens/home_screen/tabs/home_tab_widget.dart';
import 'package:icabannas/src/screens/home_screen/tabs/last_orders_tab_widget.dart';
import 'package:icabannas/src/screens/home_screen/tabs/profile_tab_widget.dart';
import 'package:icabannas/src/screens/home_screen/widgets/app_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final List<Dish> dataDishes = [
    Dish(
      dishName: "Veggie tomato mix",
      dishPrice: "N1,900",
      dishImage: "veggie_tomato",
    ),
    Dish(
      dishName: "Egg and cucumber",
      dishPrice: "N1,500",
      dishImage: "egg_cucmber",
    ),
    Dish(
      dishName: "Fried Chicken m.",
      dishPrice: "N2,100",
      dishImage: "fried_chicken",
    ),
    Dish(
      dishName: "Moi-moi and ekpa.",
      dishPrice: "N2,30",
      dishImage: "moimoi",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color(0xFFF2F2F2),
        // faz com que o corpo da tela ocupe o espaço da app bar também
        // extendBodyBehindAppBar: true,
        appBar: AppBarWidget(
          maxWidth: MediaQuery.of(context).size.width,
          onMenuPressed: () => debugPrint('Drawer'),
          onCartPressed: () => debugPrint('Cart'),
        ),
        body: TabBarView(
          children: [
            HomeTabWidget(dataDishes: dataDishes),
            const FavoriteTabWidget(),
            const ProfileTabWidget(),
            const LastOrdersTabWidget(),
          ],
        ),
        bottomNavigationBar: SizedBox(
          width: MediaQuery.of(context).size.width * 0.6,
          height: MediaQuery.of(context).size.width * 0.2,
          child: Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: const TabBar(
              indicator: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x33FA4A0C),
                    blurRadius: 10.0,
                    spreadRadius: 0.1,
                  ),
                ],
              ),
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(icon: Icon(Icons.home, size: 35)),
                Tab(icon: Icon(Icons.favorite_border, size: 35)),
                Tab(icon: Icon(Icons.person_outline, size: 35)),
                Tab(icon: Icon(Icons.restore, size: 35)),
              ],
              labelColor: Color(0xFFFA4A0C),
              unselectedLabelColor: Color(0xFFADADAF),
            ),
          ),
        ),
      ),
    );
  }
}
