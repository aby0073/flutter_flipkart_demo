import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/project-flip/login_page.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _timer();
  }

  _timer()
  {
    Timer(Duration(seconds: 5), () {
      setState(() {
        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "LOGIN",
      )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
                child: Image.network(
                    "https://logos-world.net/wp-content/uploads/2020/11/Flipkart-Logo-2015-present.jpg")),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}
