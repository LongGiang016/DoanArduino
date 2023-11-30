import 'package:flutter/material.dart';
import 'package:flutter_application_1/login/views/change_pass_screen.dart';
import 'package:flutter_application_1/login/views/login_phone_screen.dart';
import 'package:flutter_application_1/login/views/login_screen.dart';
import 'package:flutter_application_1/login/views/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => LoginScreen(),
        '/login2': (context) => LoginPhoneScreen(),
        '/signup': (context) => SignUpScreen(),
        '/changepass': (context) => ChangePass()
      },
      initialRoute: '/',
    );
  }
}
