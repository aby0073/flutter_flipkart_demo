import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  const Alert({Key? key}) : super(key: key);

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "Alert",
          style: TextStyle(color: Colors.greenAccent),
        )),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Do you want to exit this app"),
                          actions: [
                            Row(
                              children: [
                                ElevatedButton(onPressed: () {

                                }, child: Text("Yes")),
                                ElevatedButton(onPressed: () {

                                }, child: Text("No"))
                              ],
                            )
                          ],
                        );
                      },
                    );
                  });
                },
                child: Text("show dialog"))
          ],
        ));
  }
}
