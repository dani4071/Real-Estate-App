import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'app.dart';

Future<void> main() async {


  // add widget binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // getX local storage
  await GetStorage.init();

  // await splash screen
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);


  runApp(const MyApp());
}



