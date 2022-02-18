import 'package:flutter/material.dart';
import 'package:icabannas/src/core/widgets/action_button.dart';
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
  void initState() {
    super.initState();
    _nameTextController.addListener(() => _name = _nameTextController.text);
    _emailTextController.addListener(() => _name = _emailTextController.text);
    _passwordTextController
        .addListener(() => _name = _passwordTextController.text);
  }

  @override
  void dispose() {
    super.dispose();
    _nameTextController.dispose();
    _emailTextController.dispose();
    _passwordTextController.dispose();
  }

  void doSingup() {
    if (_controller.singup(_name, _email, _password)) {
      setState(() {
        _msgError = "";
      });
      debugPrint("Singup was realized with success");
      Navigator.pushReplacementNamed(context, "/home");
    } else {
      setState(() {
        _msgError = "Erro ao realizar o cadastro, tente novamente!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // isto é necessário?
          children: [
            TextField(
                onChanged: (value) => _name = value,
                autocorrect: false,
                enableSuggestions: false,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: "Nome",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                )),
            TextField(
              onChanged: (value) => _email = value,
              autocorrect: false,
              enableSuggestions: false,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                icon: Icon(Icons.email),
                labelText: "Endereço de Email",
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
            TextField(
              onChanged: (value) => _password = value,
              obscureText: true,
              autocorrect: false,
              enableSuggestions: false,
              decoration: const InputDecoration(
                icon: Icon(Icons.lock),
                labelText: "Senha",
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              _msgError,
              style: const TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: ActionButton("Inscrever-se",
                      backgroundColor: const Color(0xFFFF460A),
                      onPressed: () => doSingup()),
                ),
              ],
            ),
          ], // children
        ),
      ),
    );
  }
}
