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
    apiKey: 'AIzaSyAP41fmEP_bfOvW3Vti0d9T1FZahwL1v4c',
    appId: '1:281784253830:web:91c8a0ccbfc61d64bd0007',
    messagingSenderId: '281784253830',
    projectId: 'whatsapp-clone-7f213',
    authDomain: 'whatsapp-clone-7f213.firebaseapp.com',
    storageBucket: 'whatsapp-clone-7f213.appspot.com',
    measurementId: 'G-538C73EJD8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB0KrQ1xPq7J51HRnpLufaIbU-o19g5OLg',
    appId: '1:281784253830:android:302e8ea8c417cb70bd0007',
    messagingSenderId: '281784253830',
    projectId: 'whatsapp-clone-7f213',
    storageBucket: 'whatsapp-clone-7f213.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC9FJ7ve_3abY-MC38ShwXx25UP7UJWu3w',
    appId: '1:281784253830:ios:969ad3bf08d8c57bbd0007',
    messagingSenderId: '281784253830',
    projectId: 'whatsapp-clone-7f213',
    storageBucket: 'whatsapp-clone-7f213.appspot.com',
    iosBundleId: 'com.example.whatsappClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC9FJ7ve_3abY-MC38ShwXx25UP7UJWu3w',
    appId: '1:281784253830:ios:969ad3bf08d8c57bbd0007',
    messagingSenderId: '281784253830',
    projectId: 'whatsapp-clone-7f213',
    storageBucket: 'whatsapp-clone-7f213.appspot.com',
    iosBundleId: 'com.example.whatsappClone',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAP41fmEP_bfOvW3Vti0d9T1FZahwL1v4c',
    appId: '1:281784253830:web:9339d4e992828a84bd0007',
    messagingSenderId: '281784253830',
    projectId: 'whatsapp-clone-7f213',
    authDomain: 'whatsapp-clone-7f213.firebaseapp.com',
    storageBucket: 'whatsapp-clone-7f213.appspot.com',
    measurementId: 'G-CFYKQNYJ49',
  );
}