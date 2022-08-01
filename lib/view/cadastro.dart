import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 200),
                child: Text(
                  'Vamos começar!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: 'Kanit-Regular'),
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Nome',
                    hintStyle: TextStyle(
                        fontSize: 17,
                        color: Colors.purple[900],
                        fontFamily: 'Kanit-Regular.ttf',
                        fontWeight: FontWeight.w500),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Número de telefone, email ou CPF',
                      hintStyle: TextStyle(
                          fontSize: 17,
                          color: Colors.purple[900],
                          fontFamily: 'Kanit-Regular.ttf',
                          fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Campo Obrigatório!';
                      }
                      return null;
                    }),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: (() {}),
                      icon: Image.asset('assets/images/Eye Lovepeople.png'),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Senha',
                    hintStyle: TextStyle(
                        fontSize: 17,
                        color: Colors.purple[900],
                        fontFamily: 'Kanit-Regular.ttf',
                        fontWeight: FontWeight.w500),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: (() {}),
                      icon: Image.asset('assets/images/Eye Lovepeople.png'),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Senha',
                    hintStyle: TextStyle(
                        fontSize: 17,
                        color: Colors.purple[900],
                        fontFamily: 'Kanit-Regular.ttf',
                        fontWeight: FontWeight.w500),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple[900]),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(width: 2, color: Colors.white)),
                ),
              ),
              onPressed: (() {
                Navigator.of(context).pushNamed('/cadconc');
              }),
              child: const Text(
                'Cadastrar',
                style: TextStyle(fontSize: 25, fontFamily: 'Kanit-Regular'),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const DottedLine(
              dashColor: Colors.white,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Já possui cadastro?',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.yellow,
                    textStyle: const TextStyle(fontSize: 17),
                  ),
                  onPressed: (() {
                    Navigator.of(context).pushNamed('/');
                  }),
                  child: const Text('Entrar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
