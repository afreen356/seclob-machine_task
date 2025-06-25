import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:seclob_machine_task/core/network/api_constants.dart';
import 'package:seclob_machine_task/model/wallet_model.dart';


class BalanceService {
  Future<Balance> fetchBalance(String accessToken) async {
    final response = await http.get(
      Uri.parse('${ApiUrls.base}${Endpoints.walletBlnc}'),
      headers: {
        'Authorization': 'Bearer $accessToken',
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final balanceMap = data['balances'][0];
      return Balance.fromJson(balanceMap);
    } else {
      throw Exception('Failed to load balance: ${response.statusCode}');
    }
  }
}
