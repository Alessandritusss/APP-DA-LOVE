import 'package:flutter/material.dart';
import 'package:lovepeople_app/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lovepeople App',
      theme: ThemeData(
        backgroundColor: const Color.fromARGB(255, 49, 1, 185),
      ),
      home: const LoginPage(),
    );
  }
}
