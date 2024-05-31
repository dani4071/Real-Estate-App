import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/data/upload_dummy_data/upload_dummy_model.dart';

class ApartmentRepository extends GetxController {
  static ApartmentRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;


  Future<List<ApartmentModel>> getAllApartments() async {
    try {
      final snapShot = await _db.collection('Apartments').get();
      final list = snapShot.docs.map((document) => ApartmentModel.fromSnapshot(document)).toList();
      return list;
    } on FirebaseException catch(e) {
      throw "Firebase base base exception";
    } on PlatformException catch(e) {
      throw "Platform base base exception";
    }
  catch(e) {
      throw 'Something went wrong on the Apartment repository';
  }
}}