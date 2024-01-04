import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'userlogin/controller.dart';
import 'userlogin/firebase_constant.dart';

int? initScreen;
Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  // SharedPreferences preferences = await SharedPreferences.getInstance();
  // initScreen = await preferences.getInt('initScreen');
  // await preferences.setInt('initScreen', 1);
  await firebaseInitialization.then((value) => {
        Get.put(AuthController()),
      });
}
