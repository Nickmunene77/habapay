import 'dart:async';

import 'package:flutter/material.dart';
import 'package:haba/screens/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: CustomPaint(
              painter: TopTrianglePainter(),
              size: const Size(353.910333975597, 175.57667262719085),
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome to",
                        style: TextStyle(
                          fontFamily: 'IBM Plex Sans',
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          height: 1.3,
                          letterSpacing: 0,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "HabaPay",
                        style: TextStyle(
                          fontFamily: 'IBM Plex Sans',
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          height: 1.3,
                          letterSpacing: 0,
                          color: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: CustomPaint(
                painter: LeftTrianglePainter(),
                size: const Size(177.57667262719085, 390.910333975597),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TopTrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = const Color.fromRGBO(253, 172, 21, 1);
    final path = Path();

    path.moveTo(-18, 0);
    path.lineTo(size.width + 20, 0);
    path.lineTo(size.width / 8, size.height - 100);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(TopTrianglePainter oldDelegate) => false;
}

class LeftTrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = const Color.fromRGBO(253, 172, 21, 1);
    final path = Path();

    path.moveTo(0, 25);
    path.lineTo(200, 300);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(LeftTrianglePainter oldDelegate) => false;
}
