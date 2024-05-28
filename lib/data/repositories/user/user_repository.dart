import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../models/user_model.dart';
import '../authentication/authentication_repository.dart';


class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();


  final FirebaseFirestore _db = FirebaseFirestore.instance;


  /// Function to save user data in the database
  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection("Users").doc(user.id).set(user.toJson());
    } on FirebaseException {
      throw "Something went wrong. please try again 1:1";
    } on FormatException catch (_) {
      throw "Something went wrong. please try again 2:2";
    } on PlatformException {
      throw "Something went wrong. please try again 3:3";
    } catch (e) {
      throw "Something went wrong. please try again 4:4";
    }
  }



  /// Function to fetch user details based on user ID.
  Future<UserModel> fetchUserDetails() async {
    try {
      final documentSnapShot = await _db.collection("Users").doc(
          AuthenticationRepository.instance.authUser.uid).get();
      // what the above function returns is called a snapshot
      if (documentSnapShot.exists) {
        return UserModel.fromSnapShot(documentSnapShot);
      } else {
        return UserModel.empty();
      }
    } on FirebaseException {
      throw "Something went wrong. please try again 1:2";
    } on FormatException catch (_) {
      throw "Something went wrong. please try again 2:3";
    } on PlatformException {
      throw "Something went wrong. please try again 3:4";
    } catch (e) {
      throw "Something went wrong. please try again 4:5";
    }
  }





}