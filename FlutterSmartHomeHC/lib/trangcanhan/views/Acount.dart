import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Account {
  String name;
  String phoneNumber;
  String email;
  int gender;
  String url;
  int type;
  String matkhau;
  
  
  Account(this.name, this.phoneNumber, this.email, this.gender, this.url, this.type, this.matkhau);
  
  String getGioiTinh(){
    if(gender == 1){
      return "Nam";
    }
    else if(gender == 0){
      return "Nữ";
    }else{
      return "Khác";
    }
  }
  
  String GetLoaiThanhVien(){
    if(type == 1){
      return "Chủ hộ";
    }
    else if(type == 0){
      return "Thành viên";
    }
    else{
      return "Khách";
    }
  }
  
  
}

class TheAccount extends StatefulWidget {
  TheAccount({super.key, required this.Ten});
  String Ten;

  @override
  State<TheAccount> createState() => _TheAccountState();
}

class _TheAccountState extends State<TheAccount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 3, right: 3),
        height: 10,
        decoration: BoxDecoration(
          //border: Border.all(width: 0.5, color: Colors.grey)
                           
        ),
        child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
            Text(widget.Ten),
             Icon(Icons.person, color : Color(0xFF31966B),size: 20),
            ],
          ),     

    );
    
  }
}