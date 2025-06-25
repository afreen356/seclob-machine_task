
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:seclob_machine_task/core/network/api_services.dart';
import 'package:seclob_machine_task/model/user_mode.dart';



class AuthViewmodel  with ChangeNotifier{
  final ApiServices apiservice = ApiServices();
  final FlutterSecureStorage secureStorage = const FlutterSecureStorage();

  bool _isloading = false;
  String? _error ;
  UserModel? _user;

   bool get isLoading => _isloading;
  String? get error => _error;
  UserModel? get user => _user;

  Future<bool> login(String email,String password)async{
      _isloading = true;
    _error = null;
    notifyListeners();
    try {
       final user = await apiservice.loginUser(email, password);
   _user = user;
    // Save token and name securely
   await secureStorage.write(key: 'token', value: user.accessToken);
   await secureStorage.write(key: 'name', value: user.name);


     _isloading=false;
   notifyListeners();
   return true;
    } catch (e) {
        _error = e.toString();
      _isloading = false;
      notifyListeners();
      return false;
      
    }
   
  }
  
}