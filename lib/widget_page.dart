import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromCircle(center: const Offset(205, 70), radius: 230);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}

Widget logoWidget() {
  return SafeArea(
    child: SingleChildScrollView(
      child: ClipOval(
        clipper: MyClipper(),
        child: Container(
          alignment: Alignment.topCenter,
          height: 310,
          width: 550,
          color: Colors.white,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/logo_lovepeople.png',
                height: 280,
                width: 280,
              ),
              Container(
                margin: const EdgeInsets.only(top: 170),
                child: const Text(
                  'Lovepeople',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 49, 1, 185),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class loginWidget extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final _emailControler = TextEditingController();
  loginWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Que bom que voltou!',
          style: TextStyle(
              fontSize: 40,
              fontFamily: 'Montserrat-semibold',
              color: Colors.white),
        ),
        const SizedBox(
          height: 15,
        ),
        Form(
          child: TextFormField(
            controller: _emailControler,
            validator: (value) {
              _emailControler.text = value!;
              if (value.isEmpty) {
                return 'Campo obrigatório!';
              }
              return null;
            },
            decoration: InputDecoration(
                hintText: 'Número de telefone, email ou CPF',
                hintStyle: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 49, 1, 185),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
                enabled: true),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Senha',
            hintStyle: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 49, 1, 185)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.white,
            enabled: true,
            suffix: IconButton(
                onPressed: () {},
                iconSize: 5,
                icon: Tab(
                  icon: Image.asset(
                    'assets/eye_lovepeople.png',
                    fit: BoxFit.cover,
                  ),
                )),
          ),
          obscureText: true,
        ),
        const SizedBox(
          height: 10,
        ),
        const ForgotPassword(),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            print('Entrou');
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  const Color.fromARGB(255, 49, 1, 185)),
              padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(width: 1, color: Colors.white),
              ))),
          child: const Text(
            'Entrar',
            style: TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.justify,
      text: const TextSpan(
          text: 'Esqueceu seu login ou senha? ',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'Clique aqui',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 14,
              ),
            ),
          ]),
    );
  }
}

Widget NewUser() {
  return RichText(
    text: TextSpan(
        text: 'Não possui cadastro? ',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 17,
        ),
        children: <TextSpan>[
          TextSpan(
              text: 'Clique aqui',
              style: const TextStyle(
                color: Colors.amber,
                fontSize: 17,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print("Clicado");
                }),
        ]),
  );
}
