import 'dart:developer';

class Balance {
  final double amount;
  final String currency; 

  Balance({required this.amount, this.currency = '₹'});
  String get formattedAmount => '$currency${amount.toStringAsFixed(2)}';

  factory Balance.fromJson(Map<String, dynamic> json) {
    log('📥 Balance.fromJson: $json');
    return Balance(
      amount: (json['balance'] as num).toDouble(),
      currency: json['currency'].toString() 
    );
  }
}