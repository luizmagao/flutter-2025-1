import 'dart:async';
import 'dart:convert';
import 'package:bancodouro/models/account.dart';
import 'package:http/http.dart';

class AccountService {
  String url = "https://git.github.com/gits/161bd7cb770eb19256b8dc6055d53503";

  Future<List<Account>> getAll() async {
    Response response = await get(
      Uri.parse(url),
      headers: {"Authorization": "Bearer "},
    );

    Map<String, dynamic> mapResponse = json.decode(response.body);
    List<dynamic> listDynamic = json.decode(
      mapResponse["files"]["account.json"]["content"],
    );
    List<Account> listAccounts = [];

    for (dynamic dyn in listDynamic) {
      Map<String, dynamic> mapAccount = dyn as Map<String, dynamic>;
      Account account = Account.fromMap(mapAccount);
      listAccounts.add(account);
    }
    return json.decode(response.body);
  }
}
