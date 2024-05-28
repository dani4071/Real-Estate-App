import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'dart:io';

import 'package:image_picker/image_picker.dart';


class danFirebaseStorageService extends GetxController {
  static danFirebaseStorageService get instance => Get.find();


  final _firebaseStorage = FirebaseStorage.instance;



  /// Upload local Assest from IDE
 /// Returns a Uint8List containing Image data.
  Future<Uint8List> getImageDataFromAssets(String path) async {
    try {
      final byteData = await rootBundle.load(path);
      final imagedata = byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes);
      return imagedata;
    } catch (e) {
      // handle exceptions gracefully
      throw 'Error Loading Image dataaaa: $e';
    }
  }


  /// Upload Image using Imagedata on cloud firebase storage
 /// returns the download URL of the uploade image.
 Future<String> uploadImageData(String path, Uint8List image, String name) async {
    try {
      final ref = _firebaseStorage.ref(path).child(name);
      await ref.putData(image);
      final url = await ref.getDownloadURL();
      return url;
    } catch (e) {
      // handle exceptions gracefully
      if (e is FirebaseException) {
        throw 'Firebase Exceptionnnn: ${e.message}';
      } else if (e is SocketException) {
        throw 'Network Errorrrr: ${e.message}';
      } else if (e is PlatformException) {
        throw 'Platform Exceptioncncc: ${e.message}';
      } else {
        throw 'something went wrongccc! please try again.';
      }
    }
 }


 /// Upload Image on Cloud firebase Storage
  /// Returns the download URL of the uploaded image
 Future<String> uploadImageFile(String path, XFile image) async {
    try {
      final ref = _firebaseStorage.ref(path).child(image.name);
      await ref.putFile(File(image.path));
      final url = await ref.getDownloadURL();
      return url;
    } catch (e)  {
      // handle exceptions gracefully
      if(e is FirebaseException) {
        throw 'Firebase Exception: ${e.message}';
      } else if (e is SocketException) {
        throw 'Network Error: ${e.message}';
      } else if (e is PlatformException) {
        throw 'Platform Exception: ${e.message}';
      } else {
        throw 'Something went wrong! please try again.';
      }
    }
 }
}