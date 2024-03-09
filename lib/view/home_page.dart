import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hi Pele'),
      ),
      body: ListView(children: [
        ListTile(
          leading: Image.asset('assets/exercises/Adductor/1.jpg'),
          title: const Text('data'),
          trailing: Image.asset('assets/exercises/Adductor/0.jpg'),
        ),
        ListTile(
          leading: Image.asset('assets/exercises/Adductor/1.jpg'),
          title: const Text('data'),
          trailing: Image.asset('assets/exercises/Ab_Roller/0.jpg'),
        ),
        ListTile(
          leading: Image.asset('assets/exercises/Air_Bike/1.jpg'),
          title: const Text('data'),
          trailing: Image.asset('assets/exercises/Adductor/0.jpg'),
        ),
        ListTile(
          leading: Image.asset('assets/exercises/3_4_Sit-Up/1.jpg'),
          title: const Text('data'),
          trailing: Image.asset('assets/exercises/Adductor/0.jpg'),
        )
      ]),
    );
  }
}
