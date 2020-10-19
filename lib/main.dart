import 'package:flutter/material.dart';
import 'package:flutter_todo_app/src/views/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: "home",
      routes: {
        "home": (_) => HomePage(),
      },
    );
  }
}
