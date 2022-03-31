import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final _formKey = GlobalKey<FormState>();
  var name = '';
  var email = "";
  var password = "";
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        // Image.network(
        //   'data:image/jpeg;base64,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',
        //   fit: BoxFit.cover,
        //   color: Colors.black12.withOpacity(0.3),
        //   colorBlendMode: BlendMode.softLight,
        //   height: 600,
        // ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                child: ListView(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.red,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        labelText: "Name:",
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                      controller: nameController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Name:";
                        }
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        labelText: "Email:",
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                      controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Email:";
                        } else if (!value.contains('@')) {
                          return "Please Enter Valid Email";
                        }
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        labelText: "Password:",
                        fillColor: Colors.yellow,
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                      controller: passwordController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Password:";
                        }
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              name = nameController.text;
                              email = emailController.text;
                              password = passwordController.text;
                            });
                          }
                        },
                        child: Text("Log In")),
                    SizedBox(
                      height: 300,
                      child: Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                'Name = $name',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                'Email = $email',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                'password = $password',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
