import 'dart:convert';
import 'dart:developer';
import 'package:seclob_machine_task/core/network/api_constants.dart';
import 'package:seclob_machine_task/model/user_mode.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<UserModel> loginUser(String email, String password) async {
    final url = Uri.parse('${ApiUrls.base}${Endpoints.login}');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'email': email.trim(),
        'password': password.trim(),
      }),
    );
    log('URL: ${ApiUrls.base}${Endpoints.login}');
    log('Body: ${jsonEncode({'email': email, 'password': password})}');
    log('REQUEST BODY: ${jsonEncode({'email': email, 'password': password})}');
    final data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      
      final accesstoken = data['accessToken']??'';
      if (accesstoken == null) {
        throw Exception('Token not found in response');
      }
      
      log('Login Successful. Token: $accesstoken');
      log('accessToke $accesstoken');
      // Success: return user data
      return UserModel.fromJson(data);
    } else if (response.statusCode == 400 || response.statusCode == 401) {
      // Invalid credentials
      throw Exception('Invalid email or password');
    } else if (response.statusCode == 500) {
      // Server error
      throw Exception('Server error. Please try again later.');
    } else {
      // Any other error
     final errorMsg = data['message'] ?? 
          (response.statusCode == 400 || response.statusCode == 401 
              ? 'Invalid email or password' 
              : 'Login failed with status ${response.statusCode}');
      throw Exception(errorMsg);
    }
  }
}
