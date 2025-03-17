import 'package:bancodouro/models/account.dart';
import 'package:bancodouro/ui/styles/app_colors.dart';
import 'package:bancodouro/ui/widgets/account_widget.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: AccountWidget(
          account: Account(
            id: 'NEW01',
            name: "Luiz",
            lastName: "Lins",
            balance: 8.000,
          ),
        ),
      ),
    );
  }
}
