import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My Stateful App"),
        ),
        body: const MyAppState(),
      ),
    );
  }
}

class MyAppState extends StatefulWidget {
  const MyAppState({super.key});

  @override
  State<MyAppState> createState() => _MyAppStateState();
}

class _MyAppStateState extends State<MyAppState> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: const Text("Nike"),
          trailing: IconButton(
            onPressed: () {
              setState(() => liked = !liked);
            },
            icon: liked
                ? (const Icon(Icons.favorite))
                : (const Icon(Icons.favorite_border)),
          ),
        ),
      ],
    );
  }
}
