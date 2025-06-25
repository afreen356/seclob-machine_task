import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:seclob_machine_task/model/user_details.dart';
import 'package:seclob_machine_task/core/services/user_service.dart';

class UserProvider with ChangeNotifier {
  final UserService userService;
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  UserDetails? _userDetails;
  bool _isLoading = false;
  String? _error;

  UserProvider(this.userService);

  UserDetails? get userDetails => _userDetails;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> loadUserDetails() async {
    _isLoading = true;
    notifyListeners();

    try {
      final token = await _storage.read(key: 'accessToken');
      if (token == null) throw Exception('Access token missing');

      _userDetails = await userService.fetchUserDetails(token);
      _error = null;
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
