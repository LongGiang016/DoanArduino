import 'package:flutter/material.dart';
import 'package:flutter_application_1/trangchu/views/trangchu/bottomNav.dart';

// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});
  // ignore: non_constant_identifier_names
  bool hint_pass = true;
  // ignore: non_constant_identifier_names
  Color color_iconbtn = Colors.black;
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: const Text("5BOT SmartHome")),
      body: Container(
        padding: const EdgeInsets.fromLTRB(50, 150, 50, 0),
        child: Column(
          children: [
            const Text(
              "Đăng nhập",
              style: TextStyle(color: Colors.blue, fontSize: 30),
            ),
            const TextField(
              decoration: InputDecoration(hintText: 'Username'),
            ),
            TextField(
              obscureText: widget.hint_pass,
              decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: IconButton(
                      onPressed: () {
                        if (widget.hint_pass == true) {
                          setState(() {
                            widget.hint_pass = false;
                            widget.color_iconbtn = Colors.green;
                          });
                        } else {
                          setState(() {
                            widget.hint_pass = true;
                            widget.color_iconbtn = Colors.black;
                          });
                        }
                      },
                      icon: Icon(
                        Icons.remove_red_eye_sharp,
                        color: widget.color_iconbtn,
                      ))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.popUntil(context, (route) => route.isFirst);
                      Navigator.pushNamed(context, '/changepass');
                    },
                    child: const Text(
                      "Quên mật khẩu",
                      style: TextStyle(color: Colors.blue),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.popUntil(context, (route) => route.isFirst);
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: const Text(
                      "Đăng ký",
                      style: TextStyle(color: Colors.blue),
                    )),
              ],
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      print("Click vào trang chủ");
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const bottomNav(),
                            ));
                      });
                    },
                    child: const Text("Đăng nhập"))),
            const Expanded(
              child: SizedBox(
                height: 300,
              ),
            ),
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
                    )),
              ],
            ),
            TextButton(
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                  Navigator.pushNamed(context, '/');
                },
                child: const Text("Đăng nhập/ Đăng ký bằng Email")),
          ],
        ),
      ),
    );
  }
}
