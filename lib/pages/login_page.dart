import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login Page"),
          centerTitle: true,
          backgroundColor: Colors.tealAccent,
        ),
        body: Column(
          children: [
            Image.asset("assets/images/Login_page.png",
                fit: BoxFit.cover, height: 300),
            // ignore: prefer_const_constructors
            SizedBox(height: 30),
            // ignore: prefer_const_constructors
            Text("Welcome",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(height: 10),
                  ElevatedButton(
                    child: const Text("Login"),
                    style: ButtonStyle(),
                    onPressed: () {
                      print("Hi, I am a button");
                    },
                  )
                ],
              ),
            )
          ],
        ));
  }
}
