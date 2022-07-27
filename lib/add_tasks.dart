import 'package:flutter/material.dart';

class AddTasks extends StatefulWidget {
  const AddTasks({Key? key}) : super(key: key);

  @override
  State<AddTasks> createState() => _AddTasksState();
}

class _AddTasksState extends State<AddTasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SingleChildScrollView(
        reverse: true,
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 110,
                        width: 110,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(100),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(14),
                        child: Image.asset(
                          'assets/images/Logo Lovepeople.png',
                          height: 60,
                        ),
                      ),
                    ],
                  ),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 27),
                      child: Text(
                        'Nova Tarefa',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'Kanit-Regular.ttf',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Título da Tarefa',
                    hintStyle: const TextStyle(
                        fontSize: 20,
                        color: Colors.deepPurple,
                        fontFamily: 'Kanit-Regular.ttf'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                    //hintMaxLines: null,
                    isDense: true,
                    contentPadding: const EdgeInsets.fromLTRB(15, 10, 0, 300),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Escreva uma descrição para sua tarefa.',
                    hintStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.deepPurple,
                        fontFamily: 'Kanit-Regular.ttf'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FloatingActionButton(
                      onPressed: (() {}),
                      backgroundColor: const Color.fromARGB(244, 255, 253, 136),
                    ),
                    FloatingActionButton(
                      onPressed: (() {}),
                      backgroundColor: const Color.fromARGB(255, 255, 235, 192),
                    ),
                    FloatingActionButton(
                      onPressed: (() {}),
                      backgroundColor: const Color.fromARGB(244, 255, 197, 250),
                    ),
                    FloatingActionButton(
                      onPressed: (() {}),
                      backgroundColor: const Color.fromARGB(255, 201, 241, 253),
                    ),
                    FloatingActionButton(
                      onPressed: (() {}),
                      backgroundColor: const Color.fromARGB(244, 216, 255, 197),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: (() {}),
                    icon: const Icon(Icons.close_rounded),
                    iconSize: 80,
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: (() {}),
                    icon: const Icon(Icons.done_rounded),
                    iconSize: 80,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
