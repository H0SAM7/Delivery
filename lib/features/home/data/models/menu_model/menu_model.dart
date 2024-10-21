import 'servings.dart';

class MenuModel {
  int? id;
  String? title;
  String? restaurantChain;
  String? image;
  String? imageType;
  Servings? servings;

  MenuModel({
    this.id,
    this.title,
    this.restaurantChain,
    this.image,
    this.imageType,
    this.servings,
  });

  factory MenuModel.fromJson(Map<String, dynamic> json) => MenuModel(
        id: json['id'] as int?,
        title: json['title'] as String?,
        restaurantChain: json['restaurantChain'] as String?,
        image: json['image'] as String?,
        imageType: json['imageType'] as String?,
        servings: json['servings'] == null
            ? null
            : Servings.fromJson(json['servings'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'restaurantChain': restaurantChain,
        'image': image,
        'imageType': imageType,
        'servings': servings?.toJson(),
      };
}
