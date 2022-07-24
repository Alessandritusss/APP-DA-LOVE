import 'dart:ui';

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import "package:app_da_love/cadastro_view.dart";

class CadastreView extends StatelessWidget {
  const CadastreView({Key? key}) : super(key: key);

  //final formKey = GlobalKey<FormState>();
  //final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 196, 72, 218),
      body: SingleChildScrollView(
        reverse: true,
        padding: const EdgeInsets.all(50),
        child: Column(children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                heightFactor: 5,
                child: Text(
                  'Vamos começar!',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 27,
                  ),
                ),
              ),
              Center(
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 255, 255, 255),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: 'Nome',
                      labelStyle: const TextStyle(
                        color: Colors.deepPurple,
                      )),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 255, 255, 255),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: 'Número de telefone, e-mail ou CPF',
                      labelStyle: const TextStyle(
                        color: Colors.deepPurple,
                      )),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 255, 255, 255),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: 'Senha',
                      labelStyle: const TextStyle(
                        color: Colors.deepPurple,
                      )),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 255, 255, 255),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: 'Confirmar senha',
                      labelStyle: const TextStyle(
                        color: Colors.deepPurple,
                      )),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
                ),
                onPressed: () {},
                child: const Text('Cadastrar'),
              ),
              SizedBox(height: 150),
              const DottedLine(
                direction: Axis.horizontal,
                lineLength: double.infinity,
                lineThickness: 1.0,
                dashLength: 2.0,
                dashColor: Colors.black,
              ),
              const Text(
                "Já possui cadastro? Entrar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
