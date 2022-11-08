import 'package:flutter/material.dart';
import 'package:savanaah/providers/todo_provider.dart';
import 'package:provider/provider.dart';
import 'package:savanaah/screens/details_screen.dart';
import 'package:savanaah/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TodoProvider(),
        child:  MaterialApp(
         initialRoute: '/',
         routes: {
          '/': (context) => const HomeScreen(),
          '/theme': (context,) => const DetailsScreen(),
         }
        ));
  }
}
