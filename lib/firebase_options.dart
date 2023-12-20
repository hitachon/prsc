// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCs1zHmfe0ft6gzU5wk-DSJovnqHtQ5VbU',
    appId: '1:233700559130:web:170a846b252f087a2ac4a3',
    messagingSenderId: '233700559130',
    projectId: 'omgabtc',
    authDomain: 'omgabtc.firebaseapp.com',
    databaseURL: 'https://omgabtc-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'omgabtc.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCk2_PXzA5jiHIEJiukWb17tFOhPFhHq4I',
    appId: '1:233700559130:android:b08f47f8b69c1a482ac4a3',
    messagingSenderId: '233700559130',
    projectId: 'omgabtc',
    databaseURL: 'https://omgabtc-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'omgabtc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAW0_NZ9N7MFlt4ULdTQ4vDzVvikCn_gus',
    appId: '1:233700559130:ios:b3d0646e0c0f6b402ac4a3',
    messagingSenderId: '233700559130',
    projectId: 'omgabtc',
    databaseURL: 'https://omgabtc-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'omgabtc.appspot.com',
    iosBundleId: 'com.example.daiTuongLeDucAnh',
  );
}
