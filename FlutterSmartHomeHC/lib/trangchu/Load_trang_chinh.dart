import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Khac/listViewItems.dart';
import 'package:flutter_application_1/trangchu/views/trangchu/ChucNangChinh_screen.dart';
import 'package:flutter_application_1/trangchu/views/trangchu/Rowbanner.dart';
import 'package:flutter_application_1/trangchu/views/trangchu/bottomNav.dart';

class trangchitiet extends StatefulWidget {
  const trangchitiet({super.key});

  @override
  State<trangchitiet> createState() => _trangchitietState();
}

class _trangchitietState extends State<trangchitiet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Rowbanner(),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Danh sách phòng",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Expanded(child: MyListView()),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Chức năng chính",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            // Expanded(child: myGirdView()),
            const ChucNangChinh(),
            //bottomNav()
          ],
        ),
      ),
    );
  }
}
