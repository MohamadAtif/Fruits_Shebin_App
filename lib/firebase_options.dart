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
        return macos;
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
    apiKey: 'AIzaSyDT4lIdoZOjmoypHoZ28_WKAkpkKdcheQo',
    appId: '1:48649360062:web:d959769dc70198de0c04ef',
    messagingSenderId: '48649360062',
    projectId: 'fruits-shebin',
    authDomain: 'fruits-shebin.firebaseapp.com',
    storageBucket: 'fruits-shebin.appspot.com',
    measurementId: 'G-TZDTP6RJ1N',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDSxJPx02pdTbiTWSu6qcxGSDwR43mMljA',
    appId: '1:48649360062:android:627c8671d1b7063f0c04ef',
    messagingSenderId: '48649360062',
    projectId: 'fruits-shebin',
    storageBucket: 'fruits-shebin.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCHOwUC1w8T5GuYdecVNw1fN7X5wTElynE',
    appId: '1:48649360062:ios:b8bb54bdffb716a50c04ef',
    messagingSenderId: '48649360062',
    projectId: 'fruits-shebin',
    storageBucket: 'fruits-shebin.appspot.com',
    iosClientId: '48649360062-ntsfq3amsm63aimbgnjmni5n3253nr83.apps.googleusercontent.com',
    iosBundleId: 'com.example.fruitShebin',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCHOwUC1w8T5GuYdecVNw1fN7X5wTElynE',
    appId: '1:48649360062:ios:87d6f6aabd345de80c04ef',
    messagingSenderId: '48649360062',
    projectId: 'fruits-shebin',
    storageBucket: 'fruits-shebin.appspot.com',
    iosClientId: '48649360062-8t6ba6otctm7mholma3gkb9n7s5upql3.apps.googleusercontent.com',
    iosBundleId: 'com.example.fruitShebin.RunnerTests',
  );
}