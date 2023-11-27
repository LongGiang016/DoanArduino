import 'package:flutter/material.dart';
import 'items.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // đây vừa là 1 thuộc tính vừa biến
  //Thay đổi khi sự kiện nhấn nút diên
  //statelist build nằm trong chính nó và được pt build gọi 1 lần với phương thức set  /
  //stateful: buil nằm trong class quản lý trạng thái của nó và build được gọi nhiều lần qua phương thức setbay;
  //trang thái:Thuộc tính dữ liệu
  var txt = const Text(" ");
  //var tat = Text(widget.title);
  

  void _incrementCounter() {
    setState(() { //phương thức sẽ được gọi lại 
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      //Nếu giá trị của txt == chuỗi rỗng thì gán giá trị = thuộc tính title của widget
      _counter++;
      
      if(_counter.isEven){
        txt = Text(widget.title , style: const TextStyle(color: Colors.white));
      }
      else
      {
        txt = Text(widget.title , style: const TextStyle(color: Colors.yellow));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    if(txt.data == " "){
        txt = Text(widget.title,style: const TextStyle(color: Color.fromARGB(255, 90, 69, 186)) );
    }

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        //padding la khonag cachh giua noi dung voi vien
        title: txt,
      ),
      body: const items(content: "Hhihiihihihi",),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

