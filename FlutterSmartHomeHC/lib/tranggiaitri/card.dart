import 'package:flutter/material.dart';

class Card_GT extends StatefulWidget {
  Card_GT({super.key,required this.id});
  var id;
  @override
  State<Card_GT> createState() => _Card_GTState();
}

class _Card_GTState extends State<Card_GT> with SingleTickerProviderStateMixin {
  bool is_checked=false;
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
            margin: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.light),
                        Text("Giải trí")
                      ],
                    ),
                    Text("Giải trí phòng ${widget.id}"),
                    Row(children: [
                      Text("Off"),
                      Switch(value: is_checked, onChanged: (bool value) {
                        setState(() {
                          is_checked = value;
                        });
                      }),
                      Text("On"),
                      
                    ],),
                  ],
                ),
                TabBar(
                  controller: _tabController,
                  tabs: const <Widget>[
                    Tab(
                      icon: Icon(Icons.light,color: Colors.black,),
                      child: Text("Chế độ 1",style: TextStyle(color: Colors.black),),
                    ),
                    Tab(
                      icon: Icon(Icons.light,color: Colors.black),
                      child: Text("Chế độ 2",style: TextStyle(color: Colors.black),),
                    ),
                    Tab(
                      icon: Icon(Icons.light,color: Colors.black),
                      child: Text("Chế độ 3",style: TextStyle(color: Colors.black),),
                    ),
                  ],
                ),
              ],
            ),
            
          ),
          
      ],
    );
  }
}

