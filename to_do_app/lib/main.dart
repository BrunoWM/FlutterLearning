import 'package:flutter/material.dart';
import 'package:to_do_app/task.dart';

void main() {
  runApp(todoapp());
}

class todoapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "to do list",
      home: todoHome(),
    );
  }
}

class todoHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return To_Do_App();
  }
}

class To_Do_App extends State<todoHome> {
  List<Task> tasks = <Task>[];
  TextEditingController controller = TextEditingController();

  void addTask(String name) {
    setState(() {
      tasks.add(Task(name));
    });
    controller.clear();
  }

  Widget getItem(Task task) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              if (task.done == false) {
                setState(() {
                  task.done = true;
                });
              } else {
                setState(() {
                  task.done = false;
                });
              }
            },
            icon: Icon(
                task.done! ? Icons.check_box : Icons.check_box_outline_blank,
                color: Colors.pink[700]),
            iconSize: 30.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(task.name!), Text(task.date!.toIso8601String())],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("To Do List"),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: controller,
                onSubmitted: ((value) {
                  addTask(value);
                }),
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (_, indice) {
                return getItem(tasks[indice]);
              },
            ))
          ],
        ),
      ),
    );
  }
}
