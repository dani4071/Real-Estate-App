import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();


  final _auth = FirebaseAuth.instance;



  Future<UserCredential> signUpWithEmailAndPassword(String email, String password) async{
    try{
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw "Something went wrong. $e";
    } on FirebaseException catch (e) {
      throw "Something went wrong. $e";
    } on FormatException catch (_) {
      throw "Something went wrong. format error";
    } on PlatformException catch (e) {
      throw "Something went wrong. $e";
    }
    catch (e) {
      throw "Something went wrong. auth, sign up authentication";
    }
  }













}