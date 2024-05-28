import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/data/services/firebase_storage_service.dart';
import 'package:my_first_official_app/data/upload_dummy_data/upload_dummy_model.dart';


class DummyRepository extends GetxController {
  static DummyRepository get instance => Get.find();


  /// variable
 final _db = FirebaseFirestore.instance;



 Future<void> uploadDummyData(List<ApartmentModel> apartments) async {
   try {
     // Uploade all the category along with thier images
     final storage = Get.put(danFirebaseStorageService());


     // loop throigh each category along with their images
     for (var apartment in apartments) {
       // Get ImageData link from the local assets
       final file = await storage.getImageDataFromAssets(apartment.image);


       // Upload Image and Get its URl
       final url = await storage.uploadImageData('Apartments', file, apartment.name);


       // Assign URl to category.image attribute
       apartment.image = url;

       // Store Category in firestore
       await _db.collection('Apartments').doc(apartment.id).set(apartment.toJson());
     }
   } on FirebaseException  catch (e) {
     throw 'mmmmmmmmmmmmmmmmmmmmmmmmmm $e';
   } on PlatformException catch (e) {
     throw 'ddddddddddddddddddddddddd $e';
   } catch (e) {
     throw 'Something went wrongggg. please try again $e';
   }

 }




}