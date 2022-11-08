import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:savanaah/providers/todo_provider.dart';
import 'package:savanaah/screens/details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<TodoProvider>(context, listen: false).getAllTodos();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Savanaah Tech"),
      ),
      body: Consumer<TodoProvider>(builder: (context, value, child) {
        final todos = value.todos;
        return ListView.builder(
            itemCount: value.todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/theme');
              },
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(todo.id.toString()),
                  ),
                  title: Text(todo.title),
                ),
              );
            });
      }
      ),
    );
  }
}
