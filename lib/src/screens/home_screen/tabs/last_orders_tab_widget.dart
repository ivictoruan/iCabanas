import 'package:flutter/material.dart';
import 'package:icabannas/src/screens/home_screen/home_screen.dart';

import '../../../core/widgets/action_button.dart';

class LastOrdersTabWidget extends StatelessWidget {
  const LastOrdersTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Container(), flex: 1),
        const Icon(
          Icons.calendar_today_outlined,
          size: 100.0,
          color: Color(0xFFC7C7C7),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "No history yet",
          style: TextStyle(
            fontFamily: 'SFPro',
            fontSize: 28,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
        const Text(
          "Hit the orange button down below to Create an order",
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
