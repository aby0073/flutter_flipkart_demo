import 'package:flutter/material.dart';
import 'package:untitled/project-flip/home.dart';
import 'package:untitled/project-flip/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formkey = GlobalKey<FormState>();
  bool _isHidden = true;
  bool _isShow = true;
  var fnameController = TextEditingController();
  var lnameController = TextEditingController();
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var conpassController = TextEditingController();
  var fname = '', lname = '', email = '', password = '', cpassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Entrance registration form",
          style:
              TextStyle(color: Colors.greenAccent, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(children: [
        Form(
          key: _formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                    decoration: InputDecoration(
                        label: Text("First Name"),
                        border: OutlineInputBorder()),
                    controller: fnameController,
                    validator: (value) {
                      if (fname == '') {
                        return "Enter your first name";
                      }
                      return null;
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: lnameController,
                  validator: (value) {
                    if (lname == '') {
                      return "Enter your first name";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      label: Text("Last Name"), border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (email == '') {
                      return "Enter email";
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
                      return "Enter the password";
                    }
                    return null;
                  },
                  obscureText: _isHidden,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      suffix: InkWell(
                          onTap: () {
                            viewPassword();
                          },
                          child: _isHidden
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off)),
                      label: Text("Password"),
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: conpassController,
                  validator: (value) {
                    if (cpassword == '') {
                      return "Enter the confirm password";
                    }
                    if(cpassword!=password)
                      {
                        return "Password must be same";

                      }
                    return null;
                  },
                  obscureText: _isShow,
                  decoration: InputDecoration(
                      hintText: 'confirm password',
                      suffix: InkWell(
                          onTap: () {
                            viewConfirmpassword();
                          },
                          child: _isShow
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off)),
                      label: Text("Confirm Password"),
                      border: OutlineInputBorder()),
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
                        fname = fnameController.text;
                        lname = lnameController.text;
                        email=emailController.text;
                        password=passController.text;
                        cpassword=conpassController.text;

                        if (_formkey.currentState!.validate()) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text("Success")));
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
                        }
                      });
                    },
                    child: Text("Register"),
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
                          builder: (context) => LoginPage(),
                        ));
                  });

                }, child: Text("Already have an account? Login")),
              )
            ],
          ),
        ),
      ]),
    );
  }

  void viewPassword() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void viewConfirmpassword() {
    setState(() {
      _isShow = !_isShow;
    });
  }
}
