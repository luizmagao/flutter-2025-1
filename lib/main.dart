import 'package:flutter/material.dart';

void main() {
  runApp(const BancoDouroApp());
}

class BancoDouroApp extends StatelessWidget {
  const BancoDouroApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Text("Sistema de gestão de contas");
    return MaterialApp(home: const Text("Sistema de gestão de contas"));
  }
}
