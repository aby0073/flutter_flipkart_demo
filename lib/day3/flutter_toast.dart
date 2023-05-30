import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastExample extends StatefulWidget {
  const ToastExample({Key? key}) : super(key: key);

  @override
  State<ToastExample> createState() => _ToastExampleState();
}

class _ToastExampleState extends State<ToastExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toast"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                setState(() {
                  Fluttertoast.showToast(
                      msg: "This is Center Short Toast",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM_LEFT,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                });
              },
              child: Text("Show toast"))
        ],
      ),
    );
  }
}
