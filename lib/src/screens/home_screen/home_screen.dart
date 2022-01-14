import 'package:flutter/material.dart';
import 'package:icabannas/src/core/widgets/dish_button_widget.dart';

  
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color(0xFFF2F2F2),
        // faz com que o corpo da tela ocupe o espaço da app bar também
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          // deixa a app bar transparente
          backgroundColor: Colors.transparent,
          // some com a sombra (já que não tem elevação)
          elevation: 0,
          leading: IconButton(
            onPressed: () => {}, 
            icon: const Icon(Icons.menu, color:Colors.black),
          ),
          actions: [
            IconButton(
              onPressed: () => {},
               icon: const Icon(Icons.shopping_cart_outlined, color: Colors.black26) 
            ),
          ],                    
        ),
         body: TabBarView(
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 250),
              child: ListView(
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                children: [
                  DishButtonWidget(
                    dishName: "Veggie tomato mix",
                    dishPrice: "N1,900",
                    dishImage: "veggie_tomato_mix",
                    onPressed: () => print("Veggie tomato mix"),
                  ),
                  DishButtonWidget(
                    dishName: "Egg and cucumber",
                    dishPrice: "N1,500",
                    dishImage: "egg_cucmber",
                    onPressed: () => print("Egg and cucumber"),
                  ),
                  DishButtonWidget(
                    dishName: "Fried Chicken m.",
                    dishPrice: "N2,100",
                    dishImage: "fried_chicken",
                    onPressed: () => print("Fried Chicken m."),
                  ),
                  DishButtonWidget(
                    dishName: "Moi-moi and ekpa.",
                    dishPrice: "N2,30",
                    dishImage: "moimoi",
                    onPressed: () => print("Moi-moi and ekpa"),
                  ),
                ],
              ),
            ),                                  
            Column(
              children: const [
                Icon(Icons.favorite),
                Text("No Favorites yet",) 
              ]
            ),
            Column(
              children: const [
                Icon(Icons.person),
                Text("Build a screen to the profile here!",) 
              ]
            ),
            Column(
              children: const [
                Icon(Icons.calendar_today),
                Text("No history yet",) 
              ]
            ),
          ],
        ),
        bottomNavigationBar: PreferredSize(
          preferredSize: Size(
            MediaQuery.of(context).size.width * 0.6,
            MediaQuery.of(context).size.width * 0.2,
          ), 
          child: SizedBox(
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
      ),
    );
  }
}