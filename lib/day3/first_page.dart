import 'package:flutter/material.dart';
class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(),
    body: Text("Hello Dundumol",
    style: TextStyle(
      color: Colors.lightBlueAccent,fontWeight: FontWeight.bold
    ),),
    );
  }
}
