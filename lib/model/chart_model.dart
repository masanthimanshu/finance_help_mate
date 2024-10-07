List<ChartModel> chartModelFromJson(data) {
  return List<ChartModel>.from(data.map((x) => ChartModel.fromJson(x)));
}

class ChartModel {
  final int total;
  final String category;

  const ChartModel({
    required this.total,
    required this.category,
  });

  factory ChartModel.fromJson(Map<String, dynamic> json) {
    return ChartModel(
      total: json["total"],
      category: json["_id"],
    );
  }
}
