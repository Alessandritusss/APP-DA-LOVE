import 'package:flutter/material.dart';
import 'cadastro_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App da love',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CadastreView(),
    );
  }
}
