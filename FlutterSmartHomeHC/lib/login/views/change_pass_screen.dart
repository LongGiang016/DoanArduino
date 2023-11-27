import 'package:flutter/material.dart';

class ChangePass extends StatefulWidget {
  const ChangePass({super.key});

  @override
  State<ChangePass> createState() => _ChangePassState();
}

class _ChangePassState extends State<ChangePass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('5BOT SmartHome')),
      body: Container(
        padding: const EdgeInsets.fromLTRB(50, 150, 50, 50),
        child: Column(
          children: [
            Stack(
              alignment: const Alignment(1.0, 0.0), // right & center
              children: <Widget>[
                const TextField(
                  decoration: InputDecoration(hintText: "Mã xác nhận"),
                ),
                Positioned(
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(shape: const StadiumBorder()),
                    onPressed: () {},
                    child: const Text("Gửi mã"),
                  ),
                ),
              ],
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Nhập mã xác minh được gửi qua SMS',
              ),
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Tiếp theo"))
          ],
        ),
      ),
    );
  }
}
