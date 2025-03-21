import 'package:bancodouro/models/account.dart';
import 'package:bancodouro/ui/styles/app_colors.dart';
import 'package:flutter/material.dart';

class AccountWidget extends StatelessWidget {
  final Account account;
  const AccountWidget({super.key, required this.account});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: AppColors.lightOrange,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${account.name} ${account.lastName}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text("ID: ${account.id}"),
              Text("Saldo: ${account.balance.toString()}"),
            ],
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
    );
  }
}
