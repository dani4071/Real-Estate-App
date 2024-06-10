import 'package:flutter/material.dart';

class CartItemModel {
  String apartmentId;
  String title;
  String location;
  double price;
  String? image;

  CartItemModel({
    required this.apartmentId,
    this.image,
    this.title = '',
    this.price = 0.0,
    this.location = '',
  });


  static CartItemModel empty() => CartItemModel(apartmentId: '');


  /// Convert a cart Item to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'apartmentId': apartmentId,
      'title': title,
      'price': price,
      'image': image,
      'location': location,
    };
  }

  /// Create a cart IItem from a JSON map
  factory CartItemModel.fromJson(Map<String, dynamic> json) {
    return CartItemModel(
      apartmentId: json['apartmentId'],
      title: json['title'],
      price: json['price'],
      image: json['image'],
      location: json['location'],
    );
  }
}
