import 'package:flutter/material.dart';

class Lista extends StatefulWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  State<Lista> createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  String pesquisa = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    'assets/images/Logo Lovepeople.png',
                    height: 100,
                  ),
                ),
              ],
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(),
                child: Text(
                  'Suas listagens',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: TextField(
                onChanged: (texto) {
                  pesquisa = texto;
                  print(pesquisa);
                },
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Busque palavras-chave',
                  hintStyle: TextStyle(fontSize: 17),
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
            // Container(
            //   padding: EdgeInsets.only(top: 400),
            //   child: ElevatedButton(
            //     onPressed: () {},
            //     child: Icon(Icons.add),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
