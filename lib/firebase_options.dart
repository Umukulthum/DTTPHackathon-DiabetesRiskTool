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
    apiKey: 'AIzaSyBmwC0bAlGNsEltyUYYE5wJcJMsrEjS8nA',
    appId: '1:273690048809:web:02ef41d4c61fb5d5829f38',
    messagingSenderId: '273690048809',
    projectId: 'auth-tutorial-afbd8',
    authDomain: 'auth-tutorial-afbd8.firebaseapp.com',
    storageBucket: 'auth-tutorial-afbd8.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD38lYdv260Jfdlwn7vIRxf8SqY_Nqq-Ro',
    appId: '1:273690048809:android:05606f146c1c88a6829f38',
    messagingSenderId: '273690048809',
    projectId: 'auth-tutorial-afbd8',
    storageBucket: 'auth-tutorial-afbd8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCILaLaGP8t0o3Kb3a0j9NDuPhTUeJWkng',
    appId: '1:273690048809:ios:0a528053c97d0b05829f38',
    messagingSenderId: '273690048809',
    projectId: 'auth-tutorial-afbd8',
    storageBucket: 'auth-tutorial-afbd8.appspot.com',
    iosBundleId: 'com.example.firstapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCILaLaGP8t0o3Kb3a0j9NDuPhTUeJWkng',
    appId: '1:273690048809:ios:4ba5739f0ebedabe829f38',
    messagingSenderId: '273690048809',
    projectId: 'auth-tutorial-afbd8',
    storageBucket: 'auth-tutorial-afbd8.appspot.com',
    iosBundleId: 'com.example.firstapp.RunnerTests',
  );
}
