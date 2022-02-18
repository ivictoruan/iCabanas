import 'package:flutter/material.dart';
import 'package:icabannas/src/core/model/dish.dart';
import 'package:icabannas/src/core/widgets/action_button.dart';
import 'package:icabannas/src/screens/dish_details/widgets/dish_app_bar_widget.dart';

class DetailsScreen extends StatefulWidget {
  // não seria melhor generalizar a classe e fazer uma de produto?
  final Dish dish;
  const DetailsScreen({
    Key? key,
    required this.dish,
  }) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    double _maxWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: DishAppBarWidget(
        maxWidth: _maxWidth,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 32.0,
          ),
          width: double.infinity, // pra q serve?
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // IMAGEM DO PRODUTO
              FractionallySizedBox(
                widthFactor: .8,
                // alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/dishs/${widget.dish.dishImage}.png',
                  fit: BoxFit.cover,
                ),
              ),
              // NOME DO PRODUTO
              Text(
                widget.dish.dishName,
                style: const TextStyle(
                  fontFamily: 'SFPro',
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(height: 10,),
              // PREÇO DO PRODUTO
              Text(
                widget.dish.dishPrice,
                style: const TextStyle(
                  fontSize: 22,
                  fontFamily: 'SFPro',
                  color: Color(0xFFFA4A0C),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Delivery info",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Delivered between monday aug and thursday 20 from 8pm to 91:32 pm",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black45,
                    ),
                  ),
                  Text(
                    "Return Policy",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Center(child: ActionButton("Add ao Carrinho", onPressed: () {})),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

// Expanded(
//                 child: DetailsWidget(
//                   dishName: widget.dish.dishName,
//                   dishPrice: widget.dish.dishPrice,
//                   dishImage: widget.dish.dishImage,
//                 ),
//               ),