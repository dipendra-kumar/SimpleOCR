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
    apiKey: 'AIzaSyD5sdUfH5ML1YnLEZZOUEDTGG5oI-BnCro',
    appId: '1:43235199438:web:ae40ca7272e5514bd2039f',
    messagingSenderId: '43235199438',
    projectId: 'flutter-ocr-f448d',
    authDomain: 'flutter-ocr-f448d.firebaseapp.com',
    storageBucket: 'flutter-ocr-f448d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDFxh2rcGisVaxArxkipu3G1PavDyag9OI',
    appId: '1:43235199438:android:6c919bc973451f25d2039f',
    messagingSenderId: '43235199438',
    projectId: 'flutter-ocr-f448d',
    storageBucket: 'flutter-ocr-f448d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDlJaj-mB0bHqG3-CGfE-OJMVr7FTxrZaY',
    appId: '1:43235199438:ios:c6f0cf6b6886d690d2039f',
    messagingSenderId: '43235199438',
    projectId: 'flutter-ocr-f448d',
    storageBucket: 'flutter-ocr-f448d.appspot.com',
    iosClientId: '43235199438-fem9hg2l0otva4mu4g1ltu8le8erra2h.apps.googleusercontent.com',
    iosBundleId: 'com.example.simpleOcr',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDlJaj-mB0bHqG3-CGfE-OJMVr7FTxrZaY',
    appId: '1:43235199438:ios:c6f0cf6b6886d690d2039f',
    messagingSenderId: '43235199438',
    projectId: 'flutter-ocr-f448d',
    storageBucket: 'flutter-ocr-f448d.appspot.com',
    iosClientId: '43235199438-fem9hg2l0otva4mu4g1ltu8le8erra2h.apps.googleusercontent.com',
    iosBundleId: 'com.example.simpleOcr',
  );
}
