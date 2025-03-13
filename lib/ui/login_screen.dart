import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(body: Center(child: Text("Sistema de gestão de contas")));
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sistema de gestão de contas",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32),
            ),
            TextFormField(decoration: InputDecoration(label: Text("E-mail"))),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(label: Text("Senha")),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Entrar")),
          ],
        ),
      ),
    );
  }
}
