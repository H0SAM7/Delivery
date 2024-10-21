class Servings {
  double? number;
  double? size;
  String? unit;

  Servings({this.number, this.size, this.unit});

  factory Servings.fromJson(Map<String, dynamic> json) => Servings(
        number: json['number'] as double?,
        size: json['size'] as double?,
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'number': number,
        'size': size,
        'unit': unit,
      };
}
