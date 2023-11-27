import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginPhoneScreen extends StatefulWidget {
  LoginPhoneScreen({super.key});
  // ignore: non_constant_identifier_names
  bool hint_pass = true;
  // ignore: non_constant_identifier_names
  Color color_iconbtn = Colors.black;
  @override
  State<LoginPhoneScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginPhoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: const Text("5BOT SmartHome")),
      body: Container(
        padding: const EdgeInsets.fromLTRB(50, 150, 50, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Text(
                  "Đăng nhập",
                  style: TextStyle(color: Colors.blue, fontSize: 30),
                ),
                Stack(
                  alignment: const Alignment(1.0, 0.0), // right & center
                  children: <Widget>[
                    const TextField(
                      decoration:
                          InputDecoration(hintText: "Nhập số điện thoại"),
                    ),
                    Positioned(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder()),
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
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("Đăng nhập"))),
              ],
            ),
            Column(
              children: [
                const Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    )),
                    Text("Các phương thức đăng nhập khác"),
                    Expanded(
                        child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.facebook,
                          color: Colors.blue,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.mail,
                          color: Colors.red[300],
                        ))
                  ],
                ),
                TextButton(
                    onPressed: () {
                      Navigator.popUntil(context, (route) => route.isFirst);
                      Navigator.pushNamed(context, '/login2');
                    },
                    child: const Text("Đăng nhập/ Đăng ký bằng Email")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
