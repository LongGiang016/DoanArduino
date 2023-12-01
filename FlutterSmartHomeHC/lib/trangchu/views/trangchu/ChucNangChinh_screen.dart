import 'package:flutter/material.dart';
import 'package:flutter_application_1/ThietBi/detail.dart';
import 'package:flutter_application_1/tranggiaitri/entertaiment_screen.dart';
import 'package:get/get.dart';

class ChucNangChinh extends StatefulWidget {
  const ChucNangChinh({super.key});

  @override
  State<ChucNangChinh> createState() => _ChucNangChinhState();
}

class _ChucNangChinhState extends State<ChucNangChinh> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    print("đã nhấn vào giải trí");
                  });
                },
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 30,
                    bottom: 30,
                    left: 50,
                    right: 50,
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
                        Icons.wind_power,
                        size: 40,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Quạt",
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    print("đã nhấn vào cảnh báo");
                  });
                },
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 30,
                    bottom: 30,
                    left: 25,
                    right: 25,
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
                        Icons.warning_amber,
                        size: 40,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Cảnh báo",
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ),
              ),
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
                          builder: (context) => ScreenLight()),
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
                          builder: (context) => Entertaiment_Screen()),
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
