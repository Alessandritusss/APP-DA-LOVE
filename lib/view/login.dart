import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final userController = TextEditingController();
  final passController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _verSenha = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            Stack(
              children: [
                Expanded(
                  child: Container(
                    height: 280,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(190, 170),
                        bottomRight: Radius.elliptical(190, 170),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Image.asset(
                      'assets/images/Logo Lovepeople.png',
                      height: 130,
                    ),
                  ),
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 188),
                    child: Text(
                      'Lovepeople',
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 18,
                          fontFamily: 'Kanit-Regular'),
                    ),
                  ),
                ),
                Column(
                  children: [
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 350),
                        child: Text(
                          'Que bom que voltou!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'Kanit-Regular',
                          ),
                        ),
                      ),
                    ),
                    Form(
                      key: _formKey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: [
                            TextFormField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'Número de telefone, email ou CPF',
                                  hintStyle: TextStyle(
                                      fontSize: 17,
                                      color: Colors.purple[900],
                                      fontFamily: 'Kanit-Regular.ttf'),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                controller: userController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Campo Obrigatório!';
                                  }
                                  return null;
                                }),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                                keyboardType: TextInputType.number,
                                obscureText: !_verSenha,
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    onPressed: (() {
                                      setState(() {
                                        _verSenha = !_verSenha;
                                      });
                                    }),
                                    icon: Image.asset(
                                      'assets/images/Eye Lovepeople.png',
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'Senha',
                                  hintStyle: TextStyle(
                                      fontSize: 17,
                                      color: Colors.purple[900],
                                      fontFamily: 'Kanit-Regular.ttf'),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                controller: passController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Campo Obrigatório!';
                                  }
                                  return null;
                                }),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 22),
                          child: Text(
                            'Esqueceu seu login ou senha?',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.yellow,
                            textStyle: const TextStyle(fontSize: 15),
                          ),
                          onPressed: (() {}),
                          child: const Text('Clique aqui'),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple[900]),
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 25),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(
                                    width: 2, color: Colors.white)),
                          ),
                        ),
                        onPressed: (() {
                          if (_formKey.currentState!.validate()) {
                            logar();
                          }
                        }),
                        child: const Text(
                          'Entrar',
                          style: TextStyle(
                              fontSize: 25, fontFamily: 'Kanit-Regular'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const DottedLine(
                      dashColor: Colors.white,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Não possui cadastro?',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.yellow,
                            textStyle: const TextStyle(fontSize: 17),
                          ),
                          onPressed: (() {
                            Navigator.of(context).pushNamed('/cad');
                          }),
                          child: const Text('Clique aqui'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  logar() async {
    var url = Uri.parse('https://todo-lovepeople.herokuapp.com/auth/local');
    var response = await http.post(
      url,
      body: {
        'identifier': userController.text,
        'password': passController.text,
      },
    );
    print(response.statusCode);
    print(response.body);
  }
}
