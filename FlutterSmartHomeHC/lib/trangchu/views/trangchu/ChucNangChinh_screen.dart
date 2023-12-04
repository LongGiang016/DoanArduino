import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/trangchu/views/trangchu/canh_bao.dart';
import 'package:flutter_application_1/HTChieuSang/chieusang_screen.dart';
import 'package:flutter_application_1/ThietBi/detail.dart';
import 'package:flutter_application_1/tranggiaitri/entertaiment_screen.dart';
import 'package:get/get.dart';

class ChucNangChinh extends StatefulWidget {
  const ChucNangChinh({super.key});

  @override
  State<ChucNangChinh> createState() => _ChucNangChinhState();
}

class _ChucNangChinhState extends State<ChucNangChinh> {
  final ref = FirebaseDatabase.instance.ref("SmartHome/Nha");
  bool cua = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2.55,
                height: MediaQuery.of(context).size.height / 5.5,
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: FirebaseAnimatedList(
                    query: ref,
                    itemBuilder: (context, snapshot, animation, index) {
                      return Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                              ),
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  ref.update({
                                    "0/TrangThaiCua":
                                        snapshot.child('TrangThaiCua').value ==
                                                1
                                            ? 0
                                            : 1
                                  });
                                });
                              },
                              icon: Icon(
                                Icons.power_settings_new_outlined,
                                color:
                                    snapshot.child('TrangThaiCua').value == true
                                        ? Colors.blue
                                        : Colors.black,
                              ),
                              iconSize: 30,
                            ),
                          ),
                          const Text(
                            "Cửa ",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              const CanhBao(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    print("đã nhấn vào thiết bị");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChieuSang()),
                    );
                  });
                },
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 30,
                    bottom: 30,
                    left: 35,
                    right: 35,
                  ),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.light,
                        size: 40,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Thiết bị",
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Entertaiment_Screen()),
                    );

                    print("đã nhấn vào giải trí");
                  });
                },
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 30,
                    bottom: 30,
                    left: 42,
                    right: 42,
                  ),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.music_video_outlined,
                        size: 40,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Giải trí",
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
