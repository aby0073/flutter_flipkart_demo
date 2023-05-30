import 'package:flutter/material.dart';

class Aby extends StatefulWidget {
  const Aby({Key? key}) : super(key: key);

  @override
  State<Aby> createState() => _AbyState();
}

class _AbyState extends State<Aby> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TASK"),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                  child: ListTile(
                leading: Icon(
                  Icons.stop,
                  color: Colors.red,
                ),
                title:
                    Text("Stop recording", style: TextStyle(color: Colors.red)),
              )),
              PopupMenuItem(
                  child: ListTile(
                leading: Icon(
                  Icons.pause,
                  color: Colors.red,
                ),
                title: Text("Pause recording",
                    style: TextStyle(color: Colors.red)),
              )),
              PopupMenuItem(
                  child: ListTile(
                leading: Icon(
                  Icons.people,
                  color: Colors.lightBlueAccent,
                ),
                title: Text("Members",
                    style: TextStyle(color: Colors.lightBlueAccent)),
              )),
              PopupMenuItem(
                  child: ListTile(
                leading: Icon(Icons.person_add, color: Colors.lightBlueAccent),
                title: Text("Invite members",
                    style: TextStyle(color: Colors.lightBlueAccent)),
              )),
              PopupMenuItem(
                  child: ListTile(
                leading: Icon(Icons.link, color: Colors.lightBlueAccent),
                title: Text("Copy invitation URL",
                    style: TextStyle(color: Colors.lightBlueAccent)),
              )),
              PopupMenuItem(
                  child: ListTile(
                leading: Icon(Icons.settings, color: Colors.lightBlueAccent),
                title: Text("Settings",
                    style: TextStyle(color: Colors.lightBlueAccent)),
              )),
              PopupMenuItem(
                  child: ListTile(
                leading: Icon(Icons.exit_to_app, color: Colors.lightBlueAccent),
                title: Text("Exit",
                    style: TextStyle(color: Colors.lightBlueAccent)),
              ))
            ],
          )
        ],
      ),
    );
  }
}
