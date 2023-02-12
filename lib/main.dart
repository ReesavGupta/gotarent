import './my_splash.dart';
import 'package:gotarent/otp_section.dart';
import 'package:gotarent/signup.dart';
import './routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const Mysplash(),
      // title: 'Splash',
      initialRoute: MyRoutes.splashRoute,
      routes: {
        MyRoutes.signupRoute: (context) => const SignUp(),
        MyRoutes.otpRoute: (context) => const OtpPage(),
        MyRoutes.splashRoute: (context) => const Mysplash(),
      },
    );
  }
}
