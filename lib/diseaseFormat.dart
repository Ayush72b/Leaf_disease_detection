class DiseaseResponse {
  List<String> diseases;

  DiseaseResponse({required this.diseases});

  factory DiseaseResponse.fromJson(Map<String, dynamic> json) {
    return DiseaseResponse(
      diseases: List<String>.from(json['diseases'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['diseases'] = this.diseases;
    return data;
  }
}
