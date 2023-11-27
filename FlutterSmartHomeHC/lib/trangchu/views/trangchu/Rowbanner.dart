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
      return SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Chọn thiết bị",style: TextStyle(fontSize: 25),)],
              ),
              Column(
                children: [
        
                  SizedBox(child: 
                    GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(10),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      children: <Widget>[
                        Container(
                          color: Colors.teal[100],
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text('Đèn',style: TextStyle(fontSize: 35),),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.light,size: 75,)
                                ],
                              ),
                            ],
                          ),
                        ),
        
                        Container(
                          color: Colors.teal[100],
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text('TV',style: TextStyle(fontSize: 35),),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.tv,size: 75,)
                                ],
                              ),
                            ],
                          ),
                        ),
        
                        Container(
                          color: Colors.teal[100],
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text('Loa',style: TextStyle(fontSize: 35),),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.speaker,size: 75,)
                                ],
                              ),
                            ],
                          ),
                        ),
        
                        Container(
                          color: Colors.teal[100],
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text('Máy Lạnh',style: TextStyle(fontSize: 35),),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.ac_unit,size: 75,)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  )
                ], 
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.fromLTRB(70, 0, 70, 0)),
                  ElevatedButton(onPressed: () {}, child: Text("Thêm thiệt bị"))
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}