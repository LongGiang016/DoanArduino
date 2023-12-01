import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/ThietBi/Load/Den.dart';

class l_Den extends StatefulWidget {
  const l_Den({super.key, required this.ned});
  final Den ned;

  @override
  State<l_Den> createState() => _l_DenState();
}

class _l_DenState extends State<l_Den> {
  @override
  Widget build(BuildContext context) {
    bool _enabled = true;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.greenAccent,
      ),
      margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      width: (MediaQuery.of(context).size.width) - 15,
      child: Column(
        children: [
          ListTile(
        leading:Icon(Icons.light, size: 50,),
        title: Text(widget.ned.name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
        subtitle: Text(""),
        trailing: Switch(
            onChanged: (bool? value) {
              // This is called when the user toggles the switch.
              setState(() {
                _enabled = value!;
              });
            },
            value: _enabled,
          ),
      ),

          // Text('${ned.price}', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red[400]),),
          
        ],
      ),
    );
  }
}