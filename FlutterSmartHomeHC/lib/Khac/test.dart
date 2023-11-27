// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// void main(List<String> args) {
//   runApp(const MaterialApp(home: test()));
// }

// class test extends StatefulWidget {
//   const test({super.key});

//   @override
//   State<test> createState() => _testState();
// }

// class _testState extends State<test> {
//   List _item = [];
//   Future<void> readJson() async {
//     final String response =
//         await rootBundle.loadString('assets/data/datalist.json');
//     final data = await json.decode(response);

//     setState(() {
//       _item = data["items"];
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("data"),
//         ),
//         body: Column(
//           children: [
//             _item.isNotEmpty
//                 ? Expanded(
//                     child: ListView.builder(
//                     itemCount: _item.length,
//                     itemBuilder: (context, index) {
//                       return Card(
//                         key: ValueKey(_item[index]["id"]),
//                         margin: const EdgeInsets.all(10),
//                         child: ListTile(
//                           leading: Text(_item[index]["id"]),
//                           title: Text(_item[index]["trangthai"]),
//                           subtitle: Text(_item[index]["thietbi"]),
//                         ),
//                       );
//                     },
//                   ))
//                 : ElevatedButton(
//                     onPressed: readJson,
//                     child: const Text("Click me"),
//                   ),
//           ],
//         ),
//         );
//   }
// }
