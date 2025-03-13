import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(body: Center(child: Text("Sistema de gestão de contas")));
    return Scaffold(
      body: Column(
        children: [
          Text("Sistema de gestão de contas"),
          TextFormField(),
          TextFormField(),
          ElevatedButton(onPressed: () {}, child: Text("Entrar")),
        ],
      ),
    );
  }
}
