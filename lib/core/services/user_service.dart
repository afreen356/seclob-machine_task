import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:seclob_machine_task/model/user_details.dart';

import 'package:seclob_machine_task/core/network/api_constants.dart';

class UserService {
  Future<UserDetails> fetchUserDetails(String accessToken) async {
    final url = Uri.parse('${ApiUrls.base}${Endpoints.profile}');

    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer $accessToken',
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return UserDetails.fromJson(data['data']);
    } else {
      throw Exception('Failed to fetch user details: ${response.statusCode}');
    }
  }
}
