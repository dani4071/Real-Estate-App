import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_first_official_app/features/shop/screens/login/login_screen.dart';
import 'package:my_first_official_app/features/shop/screens/onBoarding/onboarding_screen.dart';
import 'package:my_first_official_app/navigation_menu.dart';
import 'package:my_first_official_app/utils/local_storage/local_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();


  /// remeber to on multidex support on the terminal
  /// variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;



  /// Get Authenticated User Data
  User get authUser => _auth.currentUser!;
  //User? get authUser => _auth.currentUser;

  
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }


  screenRedirect() async{
    final user = _auth.currentUser;
    // if(kDebugMode){
    //   print("===============================Checking for user===============");
    //   print(user);
    // }
    if(user != null){

      // Initialize user specific storage
      await danLocalStorage.init(user.uid);

      // if user is valid go to the home screen
      Get.offAll(() => navigationMenu());
    } else {
      // Local Storage
      deviceStorage.writeIfNull("ISFIRSTTIME", true);
      deviceStorage.read("ISFIRSTTIME") != true ? Get.offAll(() => loginScreen()) : Get.offAll(() => onBoardingScreen());
    }
    }


  Future<UserCredential> registerWithEmailAndPassword(String email, String password) async{
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



  /// [EmailAuthentication] - LOGIN
  Future<UserCredential> loginWithEmailAndPassword(String email,
      String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw "Something went wrong. $e";
    } on FirebaseException {
      throw "Something went wrong. please try again 2";
    } on FormatException catch (_) {
      throw "Something went wrong. please try again 3";
    } on PlatformException {
      throw "Something went wrong. please try again 4";
    } catch (e) {
      throw "Something went wrong. $e";
    }
  }



  /// [LOGOUTUSER] - Valid for any authentication
  Future<void> logoutUser() async {
    try {
      await _auth.signOut();
      Get.offAll(() => const loginScreen());
    } on FirebaseAuthException {
      // throw danException(e.code).message;
      throw "Something went wrong. please try again 1";
    } on FirebaseException {
      // throw danException(e.code).message;
      throw "Something went wrong. please try again 2";
    } on FormatException catch (_) {
      // throw danException().message;
      throw "Something went wrong. please try again 3";
    } on PlatformException {
      // throw danException(e.code).message;
      throw "Something went wrong. please try again 4";
    } catch (e) {
      throw "Something went wrong. please try again 5";
    }
  }










}