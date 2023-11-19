import 'package:flutter/material.dart';
import 'package:todo_list/models/task.dart';
import 'package:todo_list/pages/home_page_functions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Task>? listTasks;
  
  void _addTask() {
    
    Task newTask = Task("item", false);

    
    setState(() {
      listTasks?.add(newTask);
    });


  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Lista de Tarefas",
            style: TextStyle(color: Colors.white)),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          if (listTasks != null)
            for (Task task in listTasks!) gerarTask(task.value),
          FloatingActionButton(
              backgroundColor: Colors.greenAccent,

              onPressed: _addTask,
              child: const Icon(Icons.add),
            ),
        ],
      ),
      
    );
  }
}
