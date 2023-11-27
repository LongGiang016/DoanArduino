import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});
  // ignore: non_constant_identifier_names
  bool hint_pass1 = true;
  // ignore: non_constant_identifier_names
  Color color_iconbtn1 = Colors.black;
  // ignore: non_constant_identifier_names
  bool hint_pass2 = true;
  // ignore: non_constant_identifier_names
  Color color_iconbtn2 = Colors.black;
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('5BOT SmartHome')),
      body: Container(
        padding: const EdgeInsets.fromLTRB(50, 150, 50, 0),
        child: Column(
          children: [
            const Text(
              "Đăng ký",
              style: TextStyle(color: Colors.blue, fontSize: 30),
            ),
            const TextField(
              decoration: InputDecoration(hintText: 'Nhập Email'),
            ),
            TextField(
              obscureText: widget.hint_pass1,
              decoration: InputDecoration(
                  hintText: 'Nhập password',
                  suffixIcon: IconButton(
                      onPressed: () {
                        if (widget.hint_pass1 == true) {
                          setState(() {
                            widget.hint_pass1 = false;
                            widget.color_iconbtn1 = Colors.green;
                          });
                        } else {
                          setState(() {
                            widget.hint_pass1 = true;
                            widget.color_iconbtn1 = Colors.black;
                          });
                        }
                      },
                      icon: Icon(
                        Icons.remove_red_eye_sharp,
                        color: widget.color_iconbtn1,
                      ))),
            ),
            TextField(
              obscureText: widget.hint_pass2,
              decoration: InputDecoration(
                  hintText: 'Nhập lại password',
                  suffixIcon: IconButton(
                      onPressed: () {
                        if (widget.hint_pass2 == true) {
                          setState(() {
                            widget.hint_pass2 = false;
                            widget.color_iconbtn2 = Colors.green;
                          });
                        } else {
                          setState(() {
                            widget.hint_pass2 = true;
                            widget.color_iconbtn2 = Colors.black;
                          });
                        }
                      },
                      icon: Icon(
                        Icons.remove_red_eye_sharp,
                        color: widget.color_iconbtn2,
                      ))),
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Tiếp theo"))
          ],
        ),
      ),
    );
  }
}
