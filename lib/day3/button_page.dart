import 'package:flutter/material.dart';
class Buttonp extends StatefulWidget {
  const Buttonp({Key? key}) : super(key: key);

  @override
  State<Buttonp> createState() => _ButtonpState();
}

class _ButtonpState extends State<Buttonp> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("ORIGAMI",
          style: TextStyle(
            color: Colors.greenAccent,fontWeight: FontWeight.bold
          ),
          ),
      ),
          body: Column(
        children: [
          Container(
              width: width,
              child: Text("Flutter Button",
              textAlign: TextAlign.center,
              textScaleFactor: 2.0,
              )),
          // TextButton(onPressed: () {
          //
          // }, child: Text("login")),
          // OutlinedButton(onPressed: () {
          //
          // }, child: Text("Login")),
          // ElevatedButton(onPressed: () {
          //
          // }, child: Text("Login")),
          // IconButton(onPressed: () {
          //
          // }, icon: Icon(Icons.add)),
      ],
    ),
    );
  }
}
