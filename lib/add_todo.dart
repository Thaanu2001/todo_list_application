import 'package:flutter/material.dart';

List todoList = [];

class AddTodo extends StatelessWidget {
  AddTodo({Key? key}) : super(key: key);
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Todo'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: controller,
            ),
          ),
          TextButton(
            onPressed: () {
              todoList.add({'title': controller.text, 'done': false});
              Navigator.pop(context);
            },
            child: Text('Add Todo'),
          )
        ],
      ),
    );
  }
}
