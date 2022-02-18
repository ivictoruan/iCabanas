import 'package:flutter/material.dart';
import 'package:icabannas/src/core/model/dish.dart';
import 'package:icabannas/src/screens/dish_details/widgets/dish_app_bar_widget.dart';

class DishDetailsScreen extends StatefulWidget { // não seria melhor generalizar a classe e fazer uma de produto?
  final Dish dish;
  const DishDetailsScreen({
    Key? key,
    required this.dish,
  }) : super(key: key);

  @override
  _DishDetailsScreenState createState() => _DishDetailsScreenState();
}

class _DishDetailsScreenState extends State<DishDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    // final List<Dish> dataDishes = Provider.of<MenuModel>(context, listen: false).menu;
    double maxWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: DishAppBarWidget(
        maxWidth: maxWidth,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/images/dishs/${widget.dish.dishImage}.png"),
                  radius: 180,
                  backgroundColor: Colors.white,
                ),
              ],
            ),
            // NOME DO PRATO
             Text(
              widget.dish.dishName,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            // PREÇO DO PRATO
            Text(
              widget.dish.dishPrice,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            // INFORMAÇÕES DE ENTREGA
            const Text(
              "Informações de entrega",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Delivered between monday aug and thursday 20 from 8pm to 91:32 pm",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            // POLITICA DE EXTORNO
            const Text(
              "Politica e Extorno",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            // BOTÃO DE ADICIONAR AO CARRINHO
            // ActionButton(
            //   "Adicionar ao Carrinho",
            //   onPressed: () {},
            // ),
          ],
        ),
      ),
    );
  }
}

// USAR ESTE?
// children: [
//                 DishButtonDetailsWidget(
//                   onPressed: () {},
//                   dishPrice: '',
//                   dishName: '',
//                   dishImage: '',
//                 )
