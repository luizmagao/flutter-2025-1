import 'package:bancodouro/ui/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BancoDOuro());
}

class BancoDOuro extends StatelessWidget {
  const BancoDOuro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginScreen());
  }
}
