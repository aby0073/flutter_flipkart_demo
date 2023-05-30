import 'package:flutter/material.dart';

class Rb extends StatefulWidget {
  const Rb({Key? key}) : super(key: key);

  @override
  State<Rb> createState() => _RbState();
}

enum Gender { male, female, other }

enum course { flutter, java, python }

class _RbState extends State<Rb> {
  var groupValue = Gender.male;

  var check1=true;
  var check2=false;
  var check3=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Origami"),
        ),
        body: Column(children: [
          Row(
            children: [
              Radio(
                groupValue: groupValue,
                value: Gender.male,
                onChanged: (value) {
                  setState(() {
                    groupValue = value!;
                  });
                },
              ),
              Text("male"),
              Radio(
                groupValue: groupValue,
                value: Gender.female,
                onChanged: (value) {
                  setState(() {
                    groupValue = value!;
                  });
                },
              ),
              Text("female"),
              Radio(
                groupValue: groupValue,
                value: Gender.other,
                onChanged: (value) {
                  setState(() {
                    groupValue = value!;
                  });
                },
              ),
              Text("other")
            ],
          ),
          Row(


            children: [
              Checkbox(value: check1, onChanged: (value) {
                setState(() {

                  check1=value!;
                });
              },),
              Text("Flutter"),
              Checkbox(value: check2, onChanged: (value) {
                setState(() {

                  check2=value!;
                });
              },),
              Text("Java"),
              Checkbox(value: check3, onChanged: (value) {
                setState(() {

                  check3=value!;
                });
              },),
              Text("python")
            ],
          ),
        ]));
  }
}
