import 'package:app_da_love/view/add_tarefa.dart';
import 'package:app_da_love/view/cad_concluido.dart';
import 'package:app_da_love/view/cadastro.dart';
import 'package:app_da_love/view/lista.dart';
import 'package:app_da_love/view/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Lovepeople',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        '/': (context) => const Login(),
        '/cad': (context) => const Cadastro(),
        '/cadconc': (context) => const CadConcluido(),
        '/add': (context) => const AddTasks(),
        '/list': (context) => const TaskList(),
      },
      initialRoute: '/',
    );
  }
}
