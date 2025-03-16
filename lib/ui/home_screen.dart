import 'package:bancodouro/ui/styles/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightGrey,
        title: const Text("Sistema de gestão de contas"),
        actions: [
          IconButton(
            onPressed: () => {Navigator.pushReplacementNamed(context, "login")},
            icon: Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
