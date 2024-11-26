class PurchasesAndDevelopment {
  final int? id;
  final bool? completed;
  final bool? purchased;

  PurchasesAndDevelopment({
    this.id,
    this.completed,
    this.purchased,
  });

  factory PurchasesAndDevelopment.fromJson(Map<String, dynamic> json) {
    return PurchasesAndDevelopment(
      id: json['id'] ?? 0,
      completed: json['completed'] ?? false,
      purchased: json['purchased'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'completed': completed,
      'purchased': purchased,
    };
  }

  // Implementación del método copyWith
  PurchasesAndDevelopment copyWith({
    int? id,
    bool? completed,
    bool? purchased,
  }) {
    return PurchasesAndDevelopment(
      id: id ?? this.id,
      completed: completed ?? this.completed,
      purchased: purchased ?? this.purchased,
    );
  }

  @override
  String toString() {
    return 'PurchasesAndDevelopment(id: $id, completed: $completed, purchased: $purchased)';
  }
}
