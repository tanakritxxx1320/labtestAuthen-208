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
    apiKey: 'AIzaSyApzGucbYNlVoGocBfIS_cqpGurbyY7gfA',
    appId: '1:461059288424:web:a4ef618fa9218badcfbadd',
    messagingSenderId: '461059288424',
    projectId: 'fir-test-208',
    authDomain: 'fir-test-208.firebaseapp.com',
    storageBucket: 'fir-test-208.appspot.com',
    measurementId: 'G-L75DKCHBLV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB2NtFHfJKAZ-0oq7CKo_uqfJVdnPjahuw',
    appId: '1:461059288424:android:260c67f8eae8620fcfbadd',
    messagingSenderId: '461059288424',
    projectId: 'fir-test-208',
    storageBucket: 'fir-test-208.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDUrcWA2tTj7e3Xv7YQQmwP2cIT_BpuoCg',
    appId: '1:461059288424:ios:009f3e27819d91bbcfbadd',
    messagingSenderId: '461059288424',
    projectId: 'fir-test-208',
    storageBucket: 'fir-test-208.appspot.com',
    iosClientId: '461059288424-mmntr09dklkde1jhaabna9je4ib86rni.apps.googleusercontent.com',
    iosBundleId: 'com.example.authentest208',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDUrcWA2tTj7e3Xv7YQQmwP2cIT_BpuoCg',
    appId: '1:461059288424:ios:009f3e27819d91bbcfbadd',
    messagingSenderId: '461059288424',
    projectId: 'fir-test-208',
    storageBucket: 'fir-test-208.appspot.com',
    iosClientId: '461059288424-mmntr09dklkde1jhaabna9je4ib86rni.apps.googleusercontent.com',
    iosBundleId: 'com.example.authentest208',
  );
}