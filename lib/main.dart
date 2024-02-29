import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(Fitpulse());
}

class Fitpulse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym!',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome back!"),
      ),
      body: Column(children: [
        WorkoutList(),
      ]),
    );
  }
}

class WorkoutList extends StatelessWidget {
  const WorkoutList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Exercise(name: "Squats"),
        Exercise(name: "Benchpress"),
        Exercise(name: "Pull-ups")
      ],
    );
  }
}

class Exercise extends StatelessWidget {
  final String name;

  const Exercise({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(name),
        IconButton(onPressed: null, iconSize: 30, icon: Icon(Icons.arrow_right))
      ],
    );
  }
}
