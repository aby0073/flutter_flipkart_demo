import 'package:flutter/material.dart';

class PopUp extends StatefulWidget {
  const PopUp({Key? key}) : super(key: key);

  @override
  State<PopUp> createState() => _PopUpState();
}

class _PopUpState extends State<PopUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("POP UP"),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                  child: ListTile(
                leading: Icon(Icons.stop),
                title: Text("Stop recording"),
              )),
              PopupMenuItem(
                  child: Text(
                "Settings",
              )),
              PopupMenuItem(
                  child: Text(
                "Exit",
              ))
            ],
          )
        ],
      ),
    );
  }
}
