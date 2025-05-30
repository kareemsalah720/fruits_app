// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyBptQtnUbK8XcOg4ScEm89lAZfiRZjY8Ro',
    appId: '1:551633296470:web:1eb746a593ed9bbd026ff7',
    messagingSenderId: '551633296470',
    projectId: 'dalel-b3c80',
    authDomain: 'dalel-b3c80.firebaseapp.com',
    storageBucket: 'dalel-b3c80.appspot.com',
    measurementId: 'G-YMH2MW8PPK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCo56LabMniut6uJo7U24axX23Am0i5zkU',
    appId: '1:551633296470:android:fa9d8236a84bcace026ff7',
    messagingSenderId: '551633296470',
    projectId: 'dalel-b3c80',
    storageBucket: 'dalel-b3c80.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCN_kOsGMIAY2g8dFHhc-GqMjiEoctfrUA',
    appId: '1:551633296470:ios:20ccd12cde7ee6a1026ff7',
    messagingSenderId: '551633296470',
    projectId: 'dalel-b3c80',
    storageBucket: 'dalel-b3c80.appspot.com',
    iosBundleId: 'com.example.fruitsApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCN_kOsGMIAY2g8dFHhc-GqMjiEoctfrUA',
    appId: '1:551633296470:ios:20ccd12cde7ee6a1026ff7',
    messagingSenderId: '551633296470',
    projectId: 'dalel-b3c80',
    storageBucket: 'dalel-b3c80.appspot.com',
    iosBundleId: 'com.example.fruitsApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBJyqoZTGqLVUDfXP2A387cKIu77CVLKYQ',
    appId: '1:551633296470:web:70f51e8d0c779f67026ff7',
    messagingSenderId: '551633296470',
    projectId: 'dalel-b3c80',
    authDomain: 'dalel-b3c80.firebaseapp.com',
    storageBucket: 'dalel-b3c80.appspot.com',
    measurementId: 'G-PQLXQTJS2D',
  );
}
