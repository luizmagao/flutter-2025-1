import 'package:bancodouro/models/account.dart';
import 'package:bancodouro/ui/styles/app_colors.dart';
import 'package:flutter/material.dart';

class AccountWidget extends StatefulWidget {
  final Account account;
  const AccountWidget({super.key, required this.account});

  @override
  State<AccountWidget> createState() => _AccountWidgetState();
}

class _AccountWidgetState extends State<AccountWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.lightOrange,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Column(),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
    );
  }
}
