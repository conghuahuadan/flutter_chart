import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_chart/donut/donut_chart_widget.dart';

class DonutPage extends StatefulWidget {
  const DonutPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return DonutPageState();
  }
}

class DonutPageState extends State<DonutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("DonutPage"),
      ),
      body: const Center(
        child: SizedBox(
          width: double.infinity,
          height: 250,
          child: DonutChartWidget(),
        ),
      ),
    );
  }
}
