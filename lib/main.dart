import 'package:flutter/material.dart';
import 'package:dai_tuong_le_duc_anh/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'app_routes.dart';
import 'firebase_options.dart';
import 'firestore_db.dart';

const MaterialColor myColor = Colors.brown;

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dai Tuong Le Duc Anh",
      theme: ThemeData(
        primarySwatch: myColor,
        fontFamily: "Pacifico",
      ),
      initialRoute: initScreen == 0 || initScreen == null ? '/intro' : '/',
      getPages: AppRoutes.routes(),
    );
  }
}
