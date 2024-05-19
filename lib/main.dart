import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0), // Altura del AppBar
          child: AppBar(
            title: Text('1390-18-3995'),
            backgroundColor: Colors.blue,
          ),
        ),
        body: Center(
          child: CustomPaint(
            size: Size(200, 400),
            painter: MyPainter(),
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // cuadrado azul
    paint.color = Colors.blue;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 3;
    canvas.drawRect(Rect.fromLTWH(size.width / 2 - 15, 50, 30, 30), paint);

    // Linea roja
    paint.color = Colors.red;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 4;
    canvas.drawLine(Offset(size.width / 2 - 50, 100), Offset(size.width / 2 + 50, 100), paint);

    // Circulo amarillo
    paint.color = Colors.yellow;
    paint.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(size.width / 2, 150), 20, paint);

    // Circulo naranja
    paint.color = Colors.orange;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 3;
    canvas.drawCircle(Offset(size.width / 2, 210), 20, paint);

    // cuadrado azul
    paint.color = Colors.blue;
    paint.style = PaintingStyle.fill;
    canvas.drawRect(Rect.fromLTWH(size.width / 2 - 15, 240, 30, 30), paint);

    // Semi circulo
    paint.color = Colors.yellow;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 3;
    canvas.drawArc(Rect.fromCircle(center: Offset(size.width / 2, 280), radius: 30), 0, 3.14, false, paint);

    // Texto Nombre
    final textPainter = TextPainter(
      text: TextSpan(
        text: 'Jefree Caceres',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(minWidth: 0, maxWidth: size.width);
    textPainter.paint(canvas, Offset(size.width / 2 - textPainter.width / 2, 260));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
