import 'package:flutter/material.dart';
import 'package:flutter_application_1/tranggiaitri/entertaiment_screen.dart';

class GiaiTri extends StatefulWidget {
  const GiaiTri({super.key});

  @override
  State<GiaiTri> createState() => _GiaiTriState();
}

class _GiaiTriState extends State<GiaiTri> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
    );
  }
}
