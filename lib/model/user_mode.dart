
class UserModel {
  final String accessToken;
  final String email;
  final String name;

  UserModel({required this.accessToken, required this.email, required this.name});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      accessToken: json['accessToken'] ?? '',
      email: json['email'] ?? '',
      name: json['name'] ?? '',
    );
  }
}