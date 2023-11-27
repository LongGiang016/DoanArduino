import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'Acount.dart';

class ListAcout extends StatefulWidget {
  const ListAcout({super.key});

  @override
  State<ListAcout> createState() => _ListAcoutState();
}

class _ListAcoutState extends State<ListAcout> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 11,
      crossAxisCount: 1,
      physics: ScrollPhysics(),
      shrinkWrap: true,
     
      children: [
        
        TheAccount(Ten: "Trần Long Giang"),
        TheAccount(Ten: "Vũ Hoàng Huy"),
        TheAccount(Ten: "Nguyễn Hoàng Kha"),
        TheAccount(Ten: "Nguyễn Tuấn Phương"), 
        TheAccount(Ten: "Trần Huỳnh Nam Khoa"),
      ],

    );
  }
}