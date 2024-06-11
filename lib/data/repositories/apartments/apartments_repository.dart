import 'package:cloud_firestore/cloud_firestore.dart';
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
    } on FirebaseException {
      throw "Firebase base base exception";
    } on PlatformException {
      throw "Platform base base exception";
    }
  catch(e) {
      throw 'Something went wrong on the Apartment repository';
  }
}




  Future<List<ApartmentModel>> getFavouriteApartment(List<String> apartmentId) async {
    try {
      final snapShot = await _db.collection('Apartments').where(FieldPath.documentId, whereIn: apartmentId).get();
      return snapShot.docs.map((querySnapshot) => ApartmentModel.fromSnapshot(querySnapshot)).toList();
    } on FirebaseException {
      throw "Firebase base base exception";
    } on PlatformException {
      throw "Platform base base exception";
    }
    catch(e) {
      throw 'Something went wrong on the Apartment repository';
    }
  }
}