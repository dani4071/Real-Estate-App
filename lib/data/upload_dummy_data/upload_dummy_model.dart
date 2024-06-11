// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
//
// class CategoryModel {
//   String id;
//   String name;
//   String image;
//   String parentId;
//   bool isFeatured;
//
//
//   CategoryModel({
//     required this.id,
//     required this.name,
//     required this.image,
//     required this.isFeatured,
//     this.parentId = '',
// });
//
//   /// Empty Helper Function
//   static CategoryModel empty() => CategoryModel(id: '', name: '', image: '', isFeatured: false);
//
//   /// Convert model to json Structure so that you can store data inn firebase
//   Map<String, dynamic> toJson() {
//     return {
//       'Name': name,
//       'Image': image,
//       'ParentId': parentId,
//       'Isfeatured': isFeatured,
//     };
//   }
//
//
//  /// Map Json oriented document snapshot from firebase to usermodel
//   factory CategoryModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
//     if(document.data() != null){
//       final data = document.data()!;
//
//       // Map Json record to the model
//       return CategoryModel(
//           id: document.id,
//           name: data['Name'] ?? '',
//           image: data['Image'] ?? '',
//           isFeatured: data['IsFeatured'] ?? '',
//         parentId: data['ParentId'] ?? false,
//       );
//     } else  {
//       return CategoryModel.empty();
//     }
//   }
//
//
//
// }



import 'package:cloud_firestore/cloud_firestore.dart';

class ApartmentModel {
  String id;
  String name;
  String image;
  String description;
  String location;
  String city;
  int bedNumber;
  double price;
  int showerNumber;
  bool isFeatured;


  ApartmentModel({
    required this.id,
    required this.name,
    required this.image,
    required this.isFeatured,
    required this.description,
    required this.bedNumber,
    required this.showerNumber,
    required this.price,
    required this.location,
    required this.city,
  });

  /// Empty Helper Function
  static ApartmentModel empty() => ApartmentModel(id: '', name: '', image: '', isFeatured: false, description: '', bedNumber: 0, showerNumber: 0, price: 0.0, location: '', city: '');

  /// Convert model to json Structure so that you can store data inn firebase
  Map<String, dynamic> toJson() {
    return {
      'Name': name,
      'Image': image,
      'IsFeatured': isFeatured,
      'Description': description,
      'BedNumber': bedNumber,
      'Price': price,
      'ShowerNumber': showerNumber,
      'Location': location,
      'City': city
    };
  }


  /// Map Json oriented document snapshot from firebase to usermodel
  factory ApartmentModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
    if(document.data() != null){
      final data = document.data()!;

      // Map Json record to the model
      return ApartmentModel(
        id: document.id,
        name: data['Name'] ?? '',
        image: data['Image'] ?? '',
        isFeatured: data['IsFeatured'] ?? '',
        description: data['Description'] ?? '',
        showerNumber: data['ShowerNumber'] ?? 0,
        bedNumber: data['BedNumber'] ?? 0,
        price: double.parse((data['Price'] ?? 0.0).toString()),
        location: data['Location'] ?? '',
        city: data['City'] ?? '',
        //double.parse((data['SalePrice'] ?? 0.0).toString())
      );
    } else  {
      return ApartmentModel.empty();
    }
  }




}