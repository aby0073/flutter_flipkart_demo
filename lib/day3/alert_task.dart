import 'package:flutter/material.dart';

class Atask extends StatefulWidget {
  const Atask({Key? key}) : super(key: key);

  @override
  State<Atask> createState() => _AtaskState();
}

class _AtaskState extends State<Atask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task alert"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                setState(() {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            title: Text("Account email to reset"),
                            actions:  [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TextFormField(),
                              ),
                              Row(
                                children: [
                                  ElevatedButton(onPressed: () {

                                  }, child: Text("Reset"))
                                ],
                              )
                            ]
                        );
                      });
                }
                );
              }, child: Text("show dialog"),
              
    ),
        ],
      ),

    );
  }
}
