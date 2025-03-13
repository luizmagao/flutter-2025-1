import 'package:flutter/material.dart';
import 'package:projeto_flutter/ui/home_screen.dart';
import 'package:projeto_flutter/ui/login_screen.dart';

void main() {
  runApp(const BancoDouroApp());
}

class BancoDouroApp extends StatelessWidget {
  const BancoDouroApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Text("Sistema de gestão de contas");
    // return MaterialApp(home: const Text("Sistema de gestão de contas"));
    return MaterialApp(
      routes: {
        'login': (context) => LoginScreen(),
        'home': (context) => HomeScreen(),
      },
      // home: Scaffold(body: Center(child: Text("Sistema de gestão de contas"))),
      initialRoute: 'login',
    );
  }
}
