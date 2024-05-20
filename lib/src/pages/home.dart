import 'package:flutter/material.dart';
import 'package:proyect_02/src/widgets/header.dart';
import 'package:proyect_02/src/widgets/list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: const Column(
        children:  <Widget>[
            HeaderWidget(),
            ListCharacters(),

      
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 104, 124, 226),
        onPressed:(){},
        child: const Icon(Icons.add),
        ),
    
    );
    
  }
}