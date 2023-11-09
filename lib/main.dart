import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:iprakriti/Pages/homepage.dart';
import 'package:iprakriti/auth/loginpage.dart';
import 'package:iprakriti/auth/otppage.dart';
import 'package:iprakriti/firebase_options.dart';
import 'package:iprakriti/util/route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Iprakriti',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const LoginPage(),
        Pages.loginpage: (context) => const LoginPage(),
        Pages.otppage: (context) => const OtpPage(),
        Pages.homepage: (context) => const HomePage()
      },
    );
  }
}
