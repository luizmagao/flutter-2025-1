import 'package:bancodouro/ui/home_screen.dart';
import 'package:bancodouro/ui/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BancoDOuro());
}

class BancoDOuro extends StatelessWidget {
  const BancoDOuro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "login": (context) => const LoginScreen(),
        "home": (context) => const HomeScreen(),
      },
      initialRoute: "login",
    );
  }
}
