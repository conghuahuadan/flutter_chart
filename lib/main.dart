import 'package:flutter/material.dart';
import 'package:flutter_chart/donut/donut_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(5),
        child: Wrap(
          spacing: 5,
          runSpacing: 5,
          children: [buildBtnWithJump("donut", const DonutPage())],
        ),
      ),
    );
  }

  Widget buildBtnWithJump(String text, Widget page) {
    return buildBtn(
        text,
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            ));
  }

  Widget buildBtn(String text, Function() onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
