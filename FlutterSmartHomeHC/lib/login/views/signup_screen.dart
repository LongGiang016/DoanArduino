import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/users_model.dart';
import 'package:flutter_application_1/repository/user_repository.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});
  bool hint_pass1 = true;
  Color color_iconbtn1 = Colors.black;
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
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
            TextField(
              controller: email,
              decoration: InputDecoration(hintText: 'Nhập Email'),
            ),
            TextField(
              controller: password,
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
            ElevatedButton(
                onPressed: () {
                  final user = UserModel(
                      email: email.text.trim(), password: password.text.trim());
                  createUser(user);
                },
                child: const Text("Tiếp theo"))
          ],
        ),
      ),
    );
  }
}

Future<void> createUser(UserModel user) async {
  await Get.put(UserRepository()).createUser(user);
}
