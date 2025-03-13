import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(body: Center(child: Text("Sistema de gestão de contas")));
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/banner.png'),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset('assets/images/stars.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 128),
                Image.asset('assets/images/logo.png', width: 120),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 32),
                    Text(
                      "Sistema de gestão de contas",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 32),
                    ),
                    SizedBox(height: 32),
                    TextFormField(
                      decoration: InputDecoration(label: Text("E-mail")),
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(label: Text("Senha")),
                    ),
                    SizedBox(height: 32),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Color(0xFFFFA902),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, "home");
                      },
                      child: Text(
                        "Entrar",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
