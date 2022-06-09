import 'package:flutter/material.dart';

import 'add_todo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo Application'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddTodo(),
            ),
          ).then((value) => setState(
                () {},
              ));
        },
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (int i = 0; i < todoList.length; i++)
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: GestureDetector(
                  onLongPress: () {
                    setState(() {
                      todoList.removeAt(i);
                    });
                  },
                  child: CheckboxListTile(
                    onChanged: (val) {
                      setState(() {
                        todoList[i]['done'] = val;
                      });
                    },
                    value: todoList[i]['done'],
                    title: Text(
                      todoList[i]['title'],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
