import 'package:flutter/material.dart';
import 'package:icabannas/src/core/widgets/action_button.dart';

import 'login_widget_controller.dart';

class LoginWidget extends StatefulWidget {
const LoginWidget({ Key? key,}) : super(key: key);


  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final LoginWidgetController _controller = LoginWidgetController();

  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  
  String _email = "";
  String _password = "";

  String _msgError = "";

  @override
  void initState(){

    super.initState();
  
    _emailTextController.addListener(() => {
      _email = _emailTextController.text,
      print(_email),
      
      }
    );


    _passwordTextController.addListener(() => _password = _passwordTextController.text);
  }

  @override
  void dispose(){

    super.dispose();

    _emailTextController.dispose();
    _passwordTextController.dispose();

  }

  void doLogin(){
    if(_controller.login(_email, _password)) {
      setState(() {
        _msgError = "";
      });
      print("Login was realized with success");
    } else {
      print("Login Error!");
    }

  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 40, right:40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // isto é necessário?
          children: [
            TextField(
              onChanged: (value) => _email = value,
              autocorrect: false,
              enableSuggestions: false,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: "Email address",
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
            TextField(
              onChanged: (value) => _password = value,
              obscureText: true,
              autocorrect: false,
              enableSuggestions: false,
              decoration: const InputDecoration(
                labelText: "Password",
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
            TextButton(
              onPressed: () => false,
              child: const Text(
                "Foggot password?",
                style: TextStyle(
                  color: Color(0xFFFA4A0C),
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              _msgError,
              style: const TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            ActionButton(
              "Login",
              backgroundColor: const Color(0xFFFF460A),
              onPressed: () => doLogin
            ),
           ], // children
        )
      ),
    );
  
  }
}