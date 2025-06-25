import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:seclob_machine_task/core/services/wallet_service.dart';
import 'package:seclob_machine_task/model/wallet_model.dart';



class BalanceProvider with ChangeNotifier {
  final BalanceService service;
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  Balance _balance = Balance(amount: 0);
  bool _isLoading = false;
  String? _error;

  BalanceProvider(this.service);

  Balance get balance => _balance;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> loadBalanceFromStorage() async {
    _isLoading = true;
    notifyListeners();

    try {
      final token = await _secureStorage.read(key: 'accessToken');
      if (token == null) {
        throw Exception('Access token not found');
      }

      _balance = await service.fetchBalance(token);
      _error = null;
    } catch (e) {
      _error = e.toString();
      debugPrint('❌ Error loading balance: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}

