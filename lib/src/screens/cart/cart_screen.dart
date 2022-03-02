import 'package:flutter/material.dart';
import 'package:icabannas/src/screens/cart/order_widget.dart';
import 'package:icabannas/src/screens/dish_details/widgets/standard_app_bar_widget.dart';

import '../../core/widgets/action_button.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      // appbar
      appBar: StandardAppBarWidget(
        maxWidth: maxWidth,
        title: const Text(
          "Carrinho",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontFamily: "SFPro",
            letterSpacing: 1.1,
          ),
        ),
        icon: const Text(""), // para não aparecer nada!
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            children: <Widget>[
              // icon + text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.swipe,
                    color: Colors.black,
                    size: 25,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "   swipe on an item to delete",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "SFPro",
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // image, name, price
              Expanded(
                child: ListView.separated(     
                  scrollDirection: Axis.vertical,
                  clipBehavior: Clip.none,             
                    itemBuilder: (context, index) {
                      return OrderWidget(
                        dishImage: "veggie_tomato",
                        dishName: "Nome do prato",
                        dishPrice: "R\$ 100,00",
                        onPressed: () {},
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 5,
                        ),
                    itemCount: 2),
              ),
              const SizedBox(height: 10),
              //lista de itens no carrinho
              // OrderWidget(
              //   dishImage: "veggie_tomato",
              //   dishName: "Nome do prato",
              //   dishPrice: "R\$ 100,00",
              //   onPressed: () {},
              // ),
              Flexible(child: Container(), flex: 2),
              // botão de completar pedido
              ActionButton(
                "Completar Pedido",
                onPressed: () {},
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}

// OrderWidget(
//                 dishImage: "veggie_tomato",
//                 dishName: "Nome do prato",
//                 dishPrice: "R\$ 100,00",
//                 onPressed: () {},
//               ),