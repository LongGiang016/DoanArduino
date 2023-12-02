import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
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
  final refPhong = FirebaseDatabase.instance.ref("SmartHome/phong");
  final refThietBi = FirebaseDatabase.instance.ref("SmartHome/ThietBi");
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
            Expanded(
                child: Container(
              decoration: BoxDecoration(border: Border(bottom: BorderSide())),
              child: FirebaseAnimatedList(
                  query: refPhong,
                  itemBuilder: (context, snapshot, animation, index) {
                    return ListTile(
                      title: Text(snapshot.child('Ten').value.toString()),
                      subtitle: Text(snapshot.child('trangthaiDen').value == 0
                          ? "Tắt"
                          : "Mở"),
                      trailing: Icon(
                        Icons.light_mode_rounded,
                        color: snapshot.child('trangthaiDen').value == 0
                            ? Colors.black
                            : Colors.greenAccent,
                      ),
                    );
                  }),
            )),
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
