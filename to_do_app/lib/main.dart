import 'package:flutter/material.dart';
import 'package:to_do_app/task.dart';

void main() {
  runApp(To_Do_App());
}

class To_Do_App extends StatelessWidget {
  List<Task> tasks = new List<Task>.empty();
  TextEditingController controller = new TextEditingController();

  void addTask(String name) {
    //why isn't working???
    setState(() {
      tasks.add(Task(name));
    });
    controller.clear();
  }

  Widget getItem(Task task) {
    return Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.check_box, color: Colors.green),
            iconSize: 30.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(task.name), Text(task.date.toIso8601String())],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("To Do List"),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              child: TextField(
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
