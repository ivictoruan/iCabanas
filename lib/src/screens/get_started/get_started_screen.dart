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
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.10),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius:30,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("images/logo.png"),
                  ),            
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.12),
                child: Text(
                  "Food for Everyone",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              
              Image.asset("images/toy.png", width: screenWidth),              
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ActionButton(
                    "Get Started",
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