import 'package:flutter/material.dart';
import 'package:icabannas/src/screens/home_screen/tabs/favorite_tab_widget.dart';
import 'package:icabannas/src/screens/home_screen/tabs/home_tab_widget.dart';
import 'package:icabannas/src/screens/home_screen/tabs/last_orders_tab_widget.dart';
import 'package:icabannas/src/screens/home_screen/tabs/profile_tab_widget.dart';
import 'package:icabannas/src/screens/home_screen/widgets/app_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFF2F2F2),
        resizeToAvoidBottomInset: false,
        // faz com que o corpo da tela ocupe o espaço da app bar também
        // extendBodyBehindAppBar: true,
        appBar: AppBarWidget(
          
          maxWidth: MediaQuery.of(context).size.width,
          onMenuPressed: () => debugPrint('Drawer'),
          onCartPressed: () => debugPrint('Cart'),
        ),
        body: const TabBarView(
          children: [
            HomeTabWidget(),
            FavoriteTabWidget(),
            // ProfileTabWidget(),
            // LastOrdersTabWidget(),
          ],
        ),
        bottomNavigationBar: SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
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
                // Tab(icon: Icon(Icons.person_outline, size: 35)),
                // Tab(icon: Icon(Icons.restore, size: 35)),
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
