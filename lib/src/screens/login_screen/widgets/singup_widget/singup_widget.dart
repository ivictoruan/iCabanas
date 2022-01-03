import 'package:flutter/material.dart';
import 'package:icabannas/src/screens/login_screen/widgets/singup_widget/singup_widget_controller.dart';

class SingupWidget extends StatefulWidget {
  const SingupWidget({Key? key}) : super(key: key);

  @override
  _SingupWidgetState createState() => _SingupWidgetState();
}

class _SingupWidgetState extends State<SingupWidget> {
  final SingupWidgetController _controller = SingupWidgetController();

  final TextEditingController _nameTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  String _name = "";
  String _email = "";
  String _password = "";

  String _msgError = "";

  @override
  void initState(){
    super.initState();
    _nameTextController.addListener(() => _name = _nameTextController.text);
    _emailTextController.addListener(() => _name = _emailTextController.text);
    _passwordTextController.addListener(() => _name = _passwordTextController.text);
  }

  @override
  void dispose(){
    super.dispose();
    _nameTextController.dispose();
    _emailTextController.dispose();
    _passwordTextController.dispose();
  }

  void doSingup(){
    if(_controller.singup(_name, _email, _password)){
      setState(() {
        _msgError = "";
      });
      print("Singup was realized with success");
    }else{
      print("Singup Error!");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}