import 'package:flutter/material.dart';
// import 'package:icabannas/src/core/widgets/action_button.dart';
import 'package:icabannas/src/screens/login_screen/widgets/login_widget/login_widget.dart';
import 'package:icabannas/src/screens/login_screen/widgets/singup_widget/singup_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFF2F2F2),
        appBar: AppBar(
          title: FractionallySizedBox(
            widthFactor: 0.36,
            child: Image.asset("assets/images/logo.png")
            ),
          centerTitle: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          toolbarHeight: _height * 0.4,
          shadowColor: const Color(0xFFE7E7E7),
          automaticallyImplyLeading: false,
          bottom: const TabBar(
            indicatorColor: Color(0xFFFA4A0C),
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(child: Text("Login", style: TextStyle(color: Colors.black))),
              Tab(child: Text("Sing-up", style: TextStyle(color: Colors.black))),
            ]
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            )
          )
        ),
        body: const SafeArea(
          child: TabBarView(children:[
            LoginWidget(), 
            SingupWidget(),
          ]),

          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.stretch,
          //   children: [
          //     ActionButton(
          //       "Login",
          //       onPressed: () => {
          //         print("Botão de login presionado!")
          //       } )
          //   ],
          // ),
        )
      ),
    );
  }
}