import 'package:bancodouro/models/account.dart';
import 'package:bancodouro/services/account_service.dart';
import 'package:bancodouro/ui/add_account_modal.dart';
import 'package:bancodouro/ui/styles/app_colors.dart';
import 'package:bancodouro/ui/widgets/account_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<List<Account>> _futureGetAll = AccountService().getAll();

  Future<void> refreshGetAll() async {
    setState(() {
      _futureGetAll = AccountService().getAll();
    });
  }

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddAccountModal();
            },
          );
        },
        backgroundColor: AppColors.orange,
        child: Icon(Icons.add, color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: RefreshIndicator(
          onRefresh: refreshGetAll,
          child: FutureBuilder(
            future: _futureGetAll,
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return const Center(child: CircularProgressIndicator());
                case ConnectionState.waiting:
                  return const Center(child: CircularProgressIndicator());
                case ConnectionState.active:
                  return const Center(child: CircularProgressIndicator());
                case ConnectionState.done:
                  if (snapshot.data == null || snapshot.data!.isEmpty) {
                    return const Center(child: Text("Nenhum conta encontrada"));
                  }

                  List<Account> listAccounts = snapshot.data!;

                  return ListView.builder(
                    itemCount: listAccounts.length,
                    itemBuilder: (context, index) {
                      Account account = listAccounts[index];
                      return AccountWidget(account: account);
                    },
                  );
              }
            },
          ),
        ),
      ),
    );
  }
}
