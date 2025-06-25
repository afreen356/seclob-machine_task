class UserDetails {
  final String name;
  final String email;
 

  UserDetails({
    required this.name,
    required this.email,
    
  });

  factory UserDetails.fromJson(Map<String, dynamic> json) {
    return UserDetails(
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      
    );
  }
}
