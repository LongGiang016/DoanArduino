import 'package:flutter/material.dart';
class items extends StatelessWidget {
  const items({super.key, required this.content});
  final String content;

  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green),
          color: Colors.yellow
          ),// cung co the chinh backround 
       
        //width: 100,
        //alignment: Alignment.center,       
        padding: const EdgeInsets.all(40),
        margin: const EdgeInsets.all(40),
        
        child:Text(content)
        //  Container(
          
        //   decoration: BoxDecoration(
        //   border: Border.all(color: Colors.green),
        //   color: Colors.red,
          
          
        //   ),

        // ),
        
      );
  }
}