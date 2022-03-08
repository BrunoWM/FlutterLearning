// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDaQh-mDYmJApI-egTPMGy1Niw4l7jYhPY',
    appId: '1:208439215615:android:4c065f70a8fc67813753ca',
    messagingSenderId: '208439215615',
    projectId: 'mynotes-flutterlearning-bwm',
    storageBucket: 'mynotes-flutterlearning-bwm.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC4FeaEVNvXFN1umWcBlrhADxi_sinhno0',
    appId: '1:208439215615:ios:97d8e9c826d1659f3753ca',
    messagingSenderId: '208439215615',
    projectId: 'mynotes-flutterlearning-bwm',
    storageBucket: 'mynotes-flutterlearning-bwm.appspot.com',
    iosClientId: '208439215615-q3shp7nqtsb007egkbagi0d9miqn05b6.apps.googleusercontent.com',
    iosBundleId: 'com.flutterlearning.mynotes',
  );
}
