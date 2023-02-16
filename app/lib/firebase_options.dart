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
    apiKey: 'AIzaSyCJDkgMrBAPlCI6swfLk5cGtQtGI70SZGA',
    appId: '1:449153823931:web:3d04c6237981fe4726a59e',
    messagingSenderId: '449153823931',
    projectId: 'hackathon-936eb',
    authDomain: 'hackathon-936eb.firebaseapp.com',
    storageBucket: 'hackathon-936eb.appspot.com',
    measurementId: 'G-B8J7DF5M1R',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCkEshdGTSEaOfRnggxaL0082MI8DJEnXk',
    appId: '1:449153823931:android:d3bd577a1c02b80026a59e',
    messagingSenderId: '449153823931',
    projectId: 'hackathon-936eb',
    storageBucket: 'hackathon-936eb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBfA836o6ycComDD95in69pEUy-djBbtKM',
    appId: '1:449153823931:ios:9fa186a8e3e94fb026a59e',
    messagingSenderId: '449153823931',
    projectId: 'hackathon-936eb',
    storageBucket: 'hackathon-936eb.appspot.com',
    iosClientId: '449153823931-llhd35c5ktn3ta9d4argt2p47ilqi5p4.apps.googleusercontent.com',
    iosBundleId: 'com.example.app',
  );
}
