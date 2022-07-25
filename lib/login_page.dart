import 'package:flutter/material.dart';
import 'package:lovepeople_app/widget_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 169, 1, 247),
      body: Column(
        children: [
          logoWidget(),
          loginWidget(),
          newUser(),
        ],
      ),
    );
  }
}
