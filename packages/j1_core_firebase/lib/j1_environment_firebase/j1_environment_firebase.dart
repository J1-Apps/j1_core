library;

import "package:firebase_core/firebase_core.dart";
import "package:flutter/material.dart";
import "package:j1_core_base/j1_core_base.dart";

abstract class J1EnvironmentFirebase extends J1Environment {
  FirebaseOptions? get firebaseOptions;

  @override
  Future<void> configure() async {
    if (firebaseOptions != null) {
      // coverage:ignore-start
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(options: firebaseOptions);
      // coverage:ignore-end
    }

    super.configure();
  }
}
