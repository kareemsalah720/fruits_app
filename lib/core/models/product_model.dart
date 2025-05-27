import 'dart:io';
import 'package:fruits_app/core/entites/product_entity.dart';
import 'package:fruits_app/core/functions/get_avg_rating.dart';
import 'review_model.dart';

class ProductModel {
  final String name;
  final String code;
  final String description;
  final num price;
  final bool isFeatured;
  String? imageUrl;
  final int expirationsMonths;
  final bool isOrganic;
  final int numberOfCalories;
  final num avgRating;
  final num ratingCount = 0;
  final int unitAmount;
  final List<ReviewModel> reviews;
  final num sellingCount;
  ProductModel(
      {required this.name,
      required this.code,
      required this.description,
      required this.expirationsMonths,
      required this.numberOfCalories,
      required this.unitAmount,
      required this.reviews,
      required this.price,
      required this.isOrganic,
      required this.isFeatured,
      required this.sellingCount,
      required this.avgRating,
      this.imageUrl});

  // factory ProductModel.fromJson(Map<String, dynamic> json) {
  //   return ProductModel(
  //    avgRating: getAvgRating(json['reviews']),
  //     name: json['name'],
  //     code: json['code'],
  //     description: json['description'],
  //     expirationsMonths: json['expirationsMonths'],
  //     numberOfCalories: json['numberOfCalories'],
  //     unitAmount: json['unitAmount'],
  //     sellingCount: json['sellingCount'],
  //     reviews: json['reviews'] != null
  //         ? List<ReviewModel>.from(
  //             json['reviews'].map((e) => ReviewModel.fromJson(e)))
  //         : [],
  //     price: json['price'],
  //     isOrganic: json['isOrganic'],
  //     isFeatured: json['isFeatured'],
  //     imageUrl: json['imageUrl'],
  //   );
  // }

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    final reviewModels = json['reviews'] != null
        ? List<ReviewModel>.from(
            json['reviews'].map((e) => ReviewModel.fromJson(e)))
        : <ReviewModel>[];

    // تحويل قائمة ReviewModel إلى قائمة ReviewEntity
    final reviewEntities = reviewModels.map((e) => e.toEntity()).toList();

    return ProductModel(
      avgRating: getAvgRating(reviewEntities),
      name: json['name'],
      code: json['code'],
      description: json['description'],
      expirationsMonths: json['expirationsMonths'],
      numberOfCalories: json['numberOfCalories'],
      unitAmount: json['unitAmount'],
      sellingCount: json['sellingCount'],
      reviews: reviewModels,
      price: json['price'],
      isOrganic: json['isOrganic'],
      isFeatured: json['isFeatured'],
      imageUrl: json['imageUrl'],
    );
  }

  toJson() {
    return {
      'name': name,
      'code': code,
      'description': description,
      'price': price,
      'isFeatured': isFeatured,
      'imageUrl': imageUrl,
      'expirationsMonths': expirationsMonths,
      'numberOfCalories': numberOfCalories,
      'unitAmount': unitAmount,
      'isOrganic': isOrganic,
      'reviews': reviews.map((e) => e.toJson()).toList()
    };
  }

  ProductEntity toEntity() {
    return ProductEntity(
        name: name,
        code: code,
        description: description,
        price: price,
        reviews: reviews.map((e) => e.toEntity()).toList() ?? [],
        expirationsMonths: expirationsMonths,
        numberOfCalories: numberOfCalories,
        unitAmount: unitAmount,
        isOrganic: isOrganic,
        isFeatured: isFeatured,
        imageUrl: imageUrl);
  }
}
