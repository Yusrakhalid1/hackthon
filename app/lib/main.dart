import 'package:app/navigation%20bar/navigation.dart';
import 'package:app/pages/PlantBio.dart';
import 'package:app/pages/another_bio.dart';
import 'package:app/screens/Cart_Item.dart';
import 'package:app/screens/favourite.dart';
import 'package:app/screens/home_screen.dart';
import 'package:app/screens/login_screen.dart';
import 'package:app/screens/signup_screen.dart';
import 'package:app/screens/splash_screeen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';


 Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     home: CartScreen(),
    debugShowCheckedModeBanner: false,
    );
  }
}
