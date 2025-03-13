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
                    backgroundColor: WidgetStatePropertyAll(Color(0xFFFFA902)),
                  ),
                  onPressed: () {},
                  child: Text("Entrar", style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
