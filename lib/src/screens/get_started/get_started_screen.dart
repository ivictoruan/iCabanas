import 'package:flutter/material.dart';
import 'package:icabannas/src/core/widgets/action_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFFF4B3A),
      body: SafeArea(
        child: SingleChildScrollView(
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
                  radius:40,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/logo.png"),
                  ),            
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    "Seja bem-vindo!",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ),

                ],
              ),
              
              
              
              Image.asset("assets/images/toy.png", width: screenWidth),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ActionButton(
                    "Começe Aqui",
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFFFF460A),
                    onPressed: () => {
                    Navigator.pushReplacementNamed(context, "/login")
                      },                               
                  ),
                ],
              ),
              // const SizedBox(height: 10),
            ],
        ),
      )
        
      ), 
    );
  }
}