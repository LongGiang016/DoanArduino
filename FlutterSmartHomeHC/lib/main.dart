import 'package:flutter/material.dart';
import 'package:flutter_application_1/login/views/login_screen.dart';
import 'package:flutter_application_1/trangchu/Load_trang_chinh.dart';
import 'package:flutter_application_1/trangchu/views/trangchu/ChucNangChinh_screen.dart';
import 'package:flutter_application_1/Khac/GridView.dart';
import 'package:flutter_application_1/trangchu/views/trangchu/Rowbanner.dart';
import 'package:flutter_application_1/trangchu/views/trangchu/bottomNav.dart';
import 'package:flutter_application_1/Khac/listViewItems.dart';

void main() {
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
      home: Scaffold(
        backgroundColor: (Colors.grey[200]),
        body: LoginScreen(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
