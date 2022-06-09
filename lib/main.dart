import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const TodoApplication());
}

class TodoApplication extends StatelessWidget {
  const TodoApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}
