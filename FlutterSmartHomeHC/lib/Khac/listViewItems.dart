import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/trangchu/model/loadtrang.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  List _item = [];
//Thêm dữ liệu vào initState thì sẽ được tải nghe khi mở App
  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  Future<void> loadJsonData() async {
    final data = await laydulieu.loadData();

    setState(() {
      _item = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _item.length,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.white,
          key: ValueKey(_item[index]["id"]),
          margin: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    _item[index]["id"],
                    style: const TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        _item[index]["trangthai"],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.lens_rounded,
                            color: Colors.greenAccent,
                          ),
                          Text(
                            _item[index]["thietbi"],
                            style: const TextStyle(fontSize: 15),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    _item[index]["id"],
                    style: const TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    _item[index]["trangthai"],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.lens_rounded,
                        color: Colors.greenAccent,
                      ),
                      Text(
                        _item[index]["thietbi"],
                        style: const TextStyle(fontSize: 15),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
