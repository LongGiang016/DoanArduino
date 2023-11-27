import 'package:flutter/material.dart';

class Rowbanner extends StatelessWidget {
  const Rowbanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              "WelCome to 5BOT SmartHome",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              softWrap: true,
            ),
            IconButton(
              onPressed: () {
                print("click thêm thiết bị ");
                showBottomSheet(context);
              },
              icon: const Icon(
                Icons.add_box,
                color: Colors.blueAccent,
                size: 35,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width - 150,
              child: const Text(
                "Ngày hôm nay của bạn như thế nào? có muốn tôi làm phiên bạn không?",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
                softWrap: true,
              ),
            ),
            Image.asset("assets/img/h1.png",
                width: MediaQuery.of(context).size.width / 4),
          ],
        )
      ],
    );
  }
}
void showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Chọn thiết bị",style: TextStyle(fontSize: 25),)],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: (MediaQuery.of(context).size.height)/2.2,
                  child:GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(10),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                          final snackBar = SnackBar(
                            content: Text('Đang phát triển'),
                            action: SnackBarAction(
                              label: 'Đóng',
                              onPressed: () {
                                // Code xử lý khi nhấn vào nút đóng
                              },
                            ),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.light,
                                size: 40,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Đèn",
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.tv,
                                size: 40,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "TV",
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          ),
                      ),

                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.speaker,
                                size: 40,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Loa",
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          ),
                      ),

                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
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

                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                          final snackBar = SnackBar(
                            content: Text('Đang phát triển'),
                            action: SnackBarAction(
                              label: 'Đóng',
                              onPressed: () {
                                // Code xử lý khi nhấn vào nút đóng
                              },
                            ),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                size: 40,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Thêm Thiết Bị",
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                )
              ], 
            ),
          ]
        ),
      );
    },
  );
}