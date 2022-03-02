import 'package:flutter/material.dart';
import 'package:icabannas/src/core/model/dish.dart';
import 'package:icabannas/src/core/model/menu_model.dart';
import 'package:icabannas/src/core/widgets/dish_button_widget.dart';
import 'package:icabannas/src/screens/dish_details/details_screen.dart';
import 'package:provider/provider.dart';

class DishesMenuWidget extends StatelessWidget {
  const DishesMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void openDish(Dish dish) {
      // mudar para openProduct?
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => DetailsScreen(dish: dish),
        ),
      );
    }

    return DefaultTabController(
        length: 4,
        child: LayoutBuilder(builder: (context, constraints) {
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
                    Tab(text: "Pratos"),
                    Tab(text: "Bebidas"),
                    Tab(text: "Cafés"),
                    Tab(text: "Especiais"),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: _maxHeight * 0.02,
                  bottom: _maxHeight * 0.06,
                ),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: _maxHeight * 0.68,
                  ),
                  child: TabBarView(
                    children: [
                      Consumer<MenuModel>(builder: (context, menuModel, child) {
                        final List<Dish> _filteredDishes =
                            menuModel.filteredMenu;

                        if (_filteredDishes.isEmpty) {
                          return const Center(
                            child: Text("Pratos não encontrados!"),
                          );
                        }

                        return ListView.separated(
                          padding:
                              EdgeInsets.symmetric(vertical: _maxHeight * 0.02),
                          scrollDirection:
                              Axis.horizontal, // testar dps em vertical
                          clipBehavior: Clip.none,
                          itemBuilder: (_, item) {
                            return DishButtonWidget(
                              dishName: _filteredDishes[item].dishName,
                              dishPrice: _filteredDishes[item].dishPrice,
                              dishImage: _filteredDishes[item].dishImage,
                              onPressed: () => openDish(_filteredDishes[item]),
                            );
                          },
                          separatorBuilder: (_, __) => const SizedBox(
                            width: 10,
                          ),
                          itemCount: _filteredDishes.length,
                        );
                      }),
                      Center(
                        child: Text("Bebidas",
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                ?.copyWith(color: Colors.black)),
                      ),
                      Center(
                        child: Text("Cafés",
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                ?.copyWith(color: Colors.black)),
                      ),
                      Center(
                        child: Text("Especiais",
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                ?.copyWith(color: Colors.black)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }));
  }
}
