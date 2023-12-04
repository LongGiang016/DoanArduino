import 'package:flutter/material.dart';
import 'package:flutter_application_1/quanLyThietBi/chieusang_screen.dart';

class ThietBi extends StatefulWidget {
  const ThietBi({super.key});

  @override
  State<ThietBi> createState() => _ThietBiState();
}

class _ThietBiState extends State<ThietBi> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          print("đã nhấn vào thiết bị");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ChieuSang()),
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
    );
  }
}
