import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
                title: Text("MY FIRST APPLICATION"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: width*0.2,
                width: width*0.2,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 16),
                  borderRadius: BorderRadius.circular(200),
                  image: DecorationImage(
                      image: NetworkImage("https://cdn.iconscout.com/icon/free/png-256/girl-woman-avatar-emoji-happy-people-kid-1659504-1410026.png")
                  )
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
