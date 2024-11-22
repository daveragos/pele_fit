import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pele_fit/model/exercise.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Exercise> exercises = [];
  @override
  void initState() {
    super.initState();
    initializeExercise();
  }

  Future<void> initializeExercise() async {
    String jsonString =
        await rootBundle.loadString('assets/dist/exercises.json');
    List<dynamic> exerciseMap = json.decode(jsonString);
    exercises = exerciseMap.map((item) => Exercise.fromJson(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        // backgroundColor: Colors.black.withOpacity(0.8),
        title: const Text('......Pele Ahaaaa'),
      ),
      body: ListView.builder(
        itemCount: exercises.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(exercises[index].name),
            subtitle: Text(exercises[index].level),
            leading: Image.asset(
              'assets/exercises/${exercises[index].images[0]}',
              // 'assets/exercises/3_4_Sit-Up/0.jpg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/detail',
                  arguments: exercises[index].id);
            },
          );
        },
      ),
    );
  }
}
