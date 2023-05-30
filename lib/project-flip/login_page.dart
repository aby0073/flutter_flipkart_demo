import 'package:flutter/material.dart';
import 'package:untitled/project-flip/home.dart';

import 'registration_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var email = '', password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: emailController,
                validator: (value) {
                  if (email == '') {
                    return "Enter the email";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    label: Text("Email"), border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: passController,
                validator: (value) {
                  if (password == '') {
                    return "enter the password";
                  }
                  return null;
                },
                obscureText: true,
                decoration: InputDecoration(
                    label: Text("Password"), border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      email = emailController.text;
                      password = passController.text;

                      if (_formkey.currentState!.validate()) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text("Success")));
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ));
                      }
                    });
                  },
                  child: Text("Login"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(onPressed: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterPage(),
                      ));
                });

              }, child: Text("No account yet? Create one")),
            )
          ],
        ),
      ),
    );
  }
}
