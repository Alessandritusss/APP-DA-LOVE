import 'package:flutter/material.dart';

class CadConcluido extends StatelessWidget {
  const CadConcluido({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 210),
              child: const Text(
                'Cadastro concluído!',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: 'Kanit-Regular'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 200),
              child: ElevatedButton(
                onPressed: (() {
                  Navigator?.of(context).pushNamed('/list');
                }),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.purple[900]),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.only(bottom: 3, right: 20, left: 20),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                      side: const BorderSide(width: 2, color: Colors.white),
                    ),
                  ),
                ),
                child: const Text(
                  'Começar',
                  style: TextStyle(fontFamily: 'Kanit-Regular', fontSize: 25),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        height: 250,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(190),
                            topRight: Radius.circular(190),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Image.asset(
                            'assets/images/Coruja Love.png',
                            height: 150,
                          ),
                        ),
                      ),
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 200),
                          child: Text(
                            'Os ventos da programação estão indo até você',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Kanit-Regular',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
