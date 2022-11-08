import 'package:flutter/material.dart';
import 'package:savanaah/providers/todo_provider.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Savanaah Tech"),
      ),
     body: const Center(
      child: Text("delectus aut autem"),
     ),
    );
  }
}
