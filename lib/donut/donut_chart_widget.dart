import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DonutChartWidget extends StatefulWidget {
  const DonutChartWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return DonutChartWidgetState();
  }
}

class DonutChartWidgetState extends State<DonutChartWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DonutChartPainter(),
    );
  }
}

class DonutChartPainter extends CustomPainter {
  double radius = 0;

  @override
  void paint(Canvas canvas, Size size) {
    computeData(size);
    Paint paint = Paint();
    paint.color = Colors.orange;
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);


  }

  void computeData(Size size) {
    radius = min(size.width, size.height) / 2;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
