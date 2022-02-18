  import 'package:flutter/material.dart';
import 'package:icabannas/src/screens/home_screen/home_screen.dart';

import '../../../core/widgets/action_button.dart';

class FavoriteTabWidget extends StatelessWidget {
  const FavoriteTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Container(), flex: 1),
        const Icon(
          Icons.favorite_border_outlined,
          size: 100.0,
          color: Color(0xFFC7C7C7),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Ainda sem favoritos 🤩",
          style: TextStyle(
            fontFamily: 'SFPro',
            fontSize: 28,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),          
        ),
        const Text(
          "Toque no botão laranja abaixo para fazer um pedido",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            fontFamily: 'SFPro',
          ),
        ),
        Flexible(child: Container(), flex: 1),
        Center(
          child: ActionButton(
            "Começar Pedido",
            onPressed: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
