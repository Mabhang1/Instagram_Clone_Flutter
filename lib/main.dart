import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone_flutter/responsive_layout_screen/responsive_layout_screen.dart';
import 'package:instagram_clone_flutter/screens/login_screen.dart';
import 'package:instagram_clone_flutter/screens/signup_screen.dart';
import 'package:instagram_clone_flutter/utils/colors.dart';
import 'package:instagram_clone_flutter/responsive_layout_screen/mobile_screen_layout.dart';
import 'package:instagram_clone_flutter/responsive_layout_screen/responsive_layout_screen.dart';
import 'package:instagram_clone_flutter/responsive_layout_screen/web_screen_layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: 'AIzaSyDt4tc1ZRhBflC-JfXsmfpExF1kB4fAkyI',
            appId: '1:222424476897:web:ce81e1865553f20ba2dba0',
            messagingSenderId: '222424476897',
            projectId: 'instagram-clone-am1',
            storageBucket: 'instagram-clone-am1.appspot.com',
            ),
            );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Instagram',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: mobileBackgroundColor,
        ),
        home: const SignupScreen(),
        );
  }
}
