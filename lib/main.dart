import 'package:flutter/material.dart';
import 'package:page_view/splachscreen.dart';
import 'package:page_view/work.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Pview(),
      routes: {
        '/': (ctx) => const MainSplash_Secrren(),
        '/x1': (ctx) => const MyHomePage(),
        '/x2': (ctx) => const Work(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyHomePage'),
      ),
      body: const Center(
          child: Text(
        'master',
        style: TextStyle(fontSize: 40),
      )),
    );
  }
}
