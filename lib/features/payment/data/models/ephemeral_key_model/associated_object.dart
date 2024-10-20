class AssociatedObject {
  String? type;
  String? id;

  AssociatedObject({this.type, this.id});

  factory AssociatedObject.fromJson(Map<String, dynamic> json) {
    return AssociatedObject(
      type: json['type'] as String?,
      id: json['id'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'type': type,
        'id': id,
      };
}
