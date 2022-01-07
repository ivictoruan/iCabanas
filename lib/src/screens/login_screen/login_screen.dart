import 'package:flutter/material.dart';
import 'package:icabannas/src/screens/login_screen/widgets/login_widget/login_widget.dart';
import 'package:icabannas/src/screens/login_screen/widgets/singup_widget/singup_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;

    // detectando se o teclado está aberto:
    final bool _isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFF2F2F2),
        appBar: AppBar(
          title: _isKeyboardOpen ? const Text("iCabanãs") : FractionallySizedBox(
            widthFactor: 0.4,
            child: Image.asset("assets/images/logo.png")
            ),
          centerTitle: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,

          toolbarHeight: _isKeyboardOpen ? null : _height * 0.3 ,
          shadowColor: const Color(0xFFE7E7E7),
          automaticallyImplyLeading: false,
          bottom: const TabBar(
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                width: 2.0,
                color: Color(0xFFFA4A0C),
              ),
              insets: EdgeInsets.symmetric(horizontal: 45.0),
            ),
            tabs: [
              Tab(child: Text("Login", style: TextStyle(color: Colors.black))),
              Tab(child: Text("Sing-up", style: TextStyle(color: Colors.black))),
            ]
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            )
          )
        ),
        body: const SafeArea(
          child: TabBarView(children: [
            LoginWidget(), 
            SingupWidget(),
          ]),
        )
      ),
    );
  }
}