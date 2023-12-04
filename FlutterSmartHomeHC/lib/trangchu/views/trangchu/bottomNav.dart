import 'package:flutter/material.dart';
import 'package:flutter_application_1/trangcanhan/views/accout_screen.dart';
import 'package:flutter_application_1/trangchu/Load_trang_chinh.dart';
import 'package:flutter_application_1/trangthongbao/thongbao_screen.dart';

class bottomNav extends StatefulWidget {
  const bottomNav({super.key});

  @override
  State<bottomNav> createState() => _bottomNavState();
}

class _bottomNavState extends State<bottomNav> {
  int _currentIndex = 0;
  final tabs = [
    trangchitiet(),
    AccountScreen(),
    ThongBaoScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_box_rounded), label: 'Account'),
           
            ],
            currentIndex:  _currentIndex,
            onTap: (index){
              setState(() {
                 _currentIndex=  index;
              });
            },
          ),
    );
  }
}