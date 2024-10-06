class ProfileModel {
  final int income;
  final int expense;
  final int savings;
  final int investment;

  const ProfileModel({
    required this.income,
    required this.expense,
    required this.savings,
    required this.investment,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      income: json["income"],
      expense: json["expense"],
      savings: json["savings"],
      investment: json["investment"],
    );
  }
}
