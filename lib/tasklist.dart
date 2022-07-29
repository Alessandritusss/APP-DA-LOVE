import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  String pesquisa = '';
  String text =
      'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore \'erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SingleChildScrollView(
        reverse: true,
        child: Center(
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 95,
                          width: 95,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(100),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(11),
                          child: Image.asset(
                            'assets/images/Logo Lovepeople.png',
                            height: 55,
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 18),
                      child: Text(
                        'Suas listagens',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'Kanit-Regular',
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    onChanged: (texto) {
                      pesquisa = texto;
                      print(pesquisa);
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Busque palavras-chave',
                      hintStyle: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Kanit-Regular',
                        color: Colors.purple[800],
                      ),
                      suffixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 450,
                  width: 350,
                  child: ListView(
                    children: [
                      _taskBox('Limpar a casa'),
                      _taskBox('Pintar a cadeira'),
                      _taskBox('Fazer um lanche'),
                      _taskBox('Estudar para prova'),
                      _taskBox('Praticar exercícios'),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: (() {}),
                  icon: const Icon(Icons.add_rounded),
                  color: Colors.white,
                  iconSize: 90,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _taskBox(String title) {
    return Card(
      color: Colors.amberAccent,
      margin: const EdgeInsets.symmetric(vertical: 5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            height: 141,
            width: 350,
            child: Text(
              '$title\n',
              style: TextStyle(
                fontSize: 20,
                color: Colors.purple[800],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 33, left: 16),
            height: 140,
            width: 313,
            child: Text(
              text,
              style: TextStyle(
                fontSize: 15.8,
                color: Colors.purple[800],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              padding: const EdgeInsets.only(left: 5, bottom: 5),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        insetPadding: const EdgeInsets.symmetric(horizontal: 0),
                        title: Text(
                          'Deseja deletar este item?',
                          style: TextStyle(color: Colors.purple[600]),
                        ),
                        content: Text(
                          '"$title" será movido para a lixeira.',
                          style: TextStyle(color: Colors.purple[700]),
                        ),
                        actions: [
                          TextButton(
                            onPressed: (() {
                              Navigator.pop(context, 'Confirmar');
                            }),
                            child: Text(
                              'Confirmar',
                              style: TextStyle(color: Colors.purple[700]),
                            ),
                          ),
                          TextButton(
                            onPressed: (() {
                              Navigator.pop(context, 'Cancelar');
                            }),
                            child: Text(
                              'Cancelar',
                              style: TextStyle(color: Colors.purple[300]),
                            ),
                          ),
                        ],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      );
                    });
              },
              icon: const Icon(
                Icons.delete_outline_rounded,
              ),
              iconSize: 36,
              color: Colors.purple[800],
            ),
          ),
        ],
      ),
    );
  }
}
