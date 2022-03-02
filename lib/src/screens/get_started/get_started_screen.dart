import 'package:flutter/material.dart';
import 'package:icabannas/src/core/widgets/action_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFFF4B3A),
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.10),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 32,
                      child: Padding(
                        padding: EdgeInsets.all(screenHeight * 0.01),
                        child: Image.asset("assets/images/logo.png"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(screenHeight * 0.02),
                      child: Text(
                        "iMarianã",
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.04),
              Image.asset("assets/images/toy.png", width: screenWidth),
              SizedBox(height: screenHeight * 0.04),
              ActionButton(
                "Começe Aqui", // ou começar?
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xFFFF460A),
                onPressed: () => {
                  Navigator.pushReplacementNamed(context, "/login"),
                  // debugPrint(screenHeight.toString()),
                },
              ),
            ],
          )),
    );
  }
}
