import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class ChieuSang extends StatefulWidget {
  const ChieuSang({super.key});

  @override
  State<ChieuSang> createState() => _ChieuSangState();
}

class _ChieuSangState extends State<ChieuSang> {
  final ref = FirebaseDatabase.instance.ref("SmartHome/phong");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Expanded(
          child: Container(
        decoration: const BoxDecoration(border: Border(bottom: BorderSide())),
        child: FirebaseAnimatedList(
            query: ref,
            itemBuilder: (context, snapshot, animation, index) {
              return ListTile(
                title: Text(snapshot.child('Ten').value.toString()),
                subtitle: Text(
                    snapshot.child('trangthaiDen').value == 0 ? "Tắt" : "Mở"),
                trailing: IconButton(
                  onPressed: () {
                    ref.update({
                      "$index/trangthaiDen":
                          snapshot.child('trangthaiDen').value == 1 ? 0 : 1
                    });
                  },
                  icon: const Icon(
                    Icons.light_mode_rounded,
                  ),
                  color: snapshot.child('trangthaiDen').value == 0
      
                      ? Colors.black
                      : Colors.greenAccent,
                ),
              );
            }),
      )),
    );
  }
}
