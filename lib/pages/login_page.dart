import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/MyRoutes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_catalog/utils/mytheme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      // ignore: prefer_const_constructors
      await Future.delayed(Duration(milliseconds: 1100));

      // ignore: use_build_context_synchronously
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Login Page",
            style: TextStyle(color: context.theme.colorScheme.secondary),
          ),
          centerTitle: true,
          backgroundColor: context.canvasColor,
        ),
        body: SingleChildScrollView(
            child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("assets/images/Login_page.png",
                  fit: BoxFit.cover, height: 300),
              // ignore: prefer_const_constructors
              SizedBox(height: 30),
              // ignore: prefer_const_constructors
              Text("Welcome $_name",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: context.theme.colorScheme.secondary)),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          _name = value;
                        });
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.length < 6) {
                          return "Password length should be atleast 6";
                        }
                        return null;
                      },
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(height: 10),
                    Material(
                      color: context.theme.colorScheme.primary,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 40 : 8),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: 40,
                          width: changeButton ? 40 : 150,
                          alignment: Alignment.center,
                          // ignore: prefer_const_constructors, sort_child_properties_last
                          child: changeButton
                              // ignore: prefer_const_constructors
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              // ignore: prefer_const_constructors
                              : Text(
                                  "Login",
                                  // ignore: prefer_const_constructors
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
