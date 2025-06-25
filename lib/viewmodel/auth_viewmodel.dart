
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:seclob_machine_task/core/services/auth_service.dart';
import 'package:seclob_machine_task/model/user_mode.dart';



class AuthProvider with ChangeNotifier {
  final ApiServices apiService = ApiServices();
  final FlutterSecureStorage secureStorage = const FlutterSecureStorage();

  bool _isLoading = false;
  String? _error;
  UserModel? _user;
  bool? _isAuthenticated; 

  bool get isLoading => _isLoading;
  String? get error => _error;
  UserModel? get user => _user;
  bool? get isAuthenticated => _isAuthenticated;

  Future<bool> login(String email, String password) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final user = await apiService.loginUser(email, password);
      _user = user;
      await _persistAuthData(user);
      _isAuthenticated = true;
      return true;
    } catch (e) {
      _error = e.toString();
      _isAuthenticated = false;
      return false;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> _persistAuthData(UserModel user) async {
    await secureStorage.write(key: 'accessToken', value: user.accessToken);
    await secureStorage.write(key: 'name', value: user.name);
    await secureStorage.write(key: 'isAuthenticated', value: 'true');
  }

  Future<bool> checkAuth() async {
    try {
      // Check multiple indicators of authentication
      final token = await secureStorage.read(key: 'accessToken');
      final authFlag = await secureStorage.read(key: 'isAuthenticated');
      
      log('Auth Check - Token: $token, AuthFlag: $authFlag');
      
      _isAuthenticated = token != null && authFlag == 'true';
      notifyListeners();
      return _isAuthenticated!;
    } catch (e) {
      debugPrint('Auth check error: $e');
      _isAuthenticated = false;
      notifyListeners();
      return false;
    }
  }

  Future<void> logout() async {
    await secureStorage.delete(key: 'accessToken');
    await secureStorage.delete(key: 'name');
    await secureStorage.delete(key: 'isAuthenticated');
    _user = null;
    _isAuthenticated = false;
    notifyListeners();
  }
}