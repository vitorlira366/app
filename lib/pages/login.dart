import 'package:flutter/material.dart';
import 'package:finalifpi/pages/homepage.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.all(70),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'images/ifpi.png',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(40),
                ),
                Divider(),
                TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.green)),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.green, fontSize: 25),
                    controller: _emailController,
                    validator: (value) =>
                        value.isEmpty ? 'Digite seu email' : null),
                Divider(),
                TextFormField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        labelText: 'Senha',
                        labelStyle: TextStyle(color: Colors.green)),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.green, fontSize: 25),
                    controller: _senhaController,
                    validator: (value) =>
                        value.isEmpty ? 'Digite sua senha' : null),
                Padding(padding: EdgeInsets.only(top: 20)),
                Container(
                  height: 30,
                  child: FlatButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      }
                    },
                    child: Text(
                      'Entrar',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    color: Colors.greenAccent[700],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

// Widget buildTextField(
//   String label,
//   TextEditingController c,
// ) {
//   return TextField(
//     controller: c,
//     decoration: InputDecoration(
//       labelText: label,
//       labelStyle: TextStyle(color: Colors.black),
//     ),
//     style: TextStyle(color: Colors.black, fontSize: 25),
//   );
// }
