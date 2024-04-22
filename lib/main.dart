import 'package:flutter/material.dart';
import 'package:myapp/screens/home_page.dart';

// this void main is the first one to be called
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // this variabel is to be used in appBar title and title for the app
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),

        // #docregion addWidget / this is your first page of the application
        body: const HomePage(),
      ),
    );
  }
}






