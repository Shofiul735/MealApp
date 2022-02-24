import 'package:flutter/material.dart';

import './widgets/category_widget.dart';

void main() => runApp(MealApp());

class MealApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _HomePage(),
    );
  }
}

class _HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<_HomePage> {
  final appbar = AppBar(
    title: const Text('DaliMeals'),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: CategoryWidget(),
      ),
    );
  }
}
