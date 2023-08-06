import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:haba/deposit_module/mynumber_deposit.dart';
import 'package:haba/send_module/send_to.dart';
import 'package:haba/statement_module/all_statement.dart';
import 'package:haba/widgets/account_bottom_bar.dart';
import 'package:haba/withdraw_module/withdraw_to_mynumber.dart';

class GraphPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint linePaint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    final Paint pointPaint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 8
      ..strokeCap = StrokeCap.round;

    const TextStyle textStyle = TextStyle(
      fontFamily: 'IBM Plex Sans',
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.grey,
    );

    const double startX = 16;
    final double endX = size.width - 16;
    final double startY = size.height - 20;
    const double endY = 20;
    final double unitY =
        (startY - endY) / 1000; // Scale the y-axis to 0-1000 range

    // Draw vertical line
    canvas.drawLine(
        Offset(startX, startY), const Offset(startX, endY), linePaint);

    // Draw horizontal line
    canvas.drawLine(Offset(startX, startY), Offset(endX, startY), linePaint);

    // Draw x-axis labels
    final List<String> xLabels = ['26', '27', '28', '29', '30', '31', '1', '2'];
    final double xLabelGap = (endX - startX) / (xLabels.length - 1);
    for (int i = 0; i < xLabels.length; i++) {
      final String label = xLabels[i];
      final TextSpan span = TextSpan(text: label, style: textStyle);
      final TextPainter tp =
          TextPainter(text: span, textDirection: TextDirection.ltr);
      tp.layout();
      tp.paint(canvas,
          Offset(startX + (i * xLabelGap) - (tp.width / 2), startY + 5));
    }

    // Draw y-axis labels
    final List<String> yLabels = ['0', '1k', '2k'];
    final double yLabelGap = (startY - endY) / (yLabels.length - 1);
    for (int i = 0; i < yLabels.length; i++) {
      final String label = yLabels[i];
      final TextSpan span = TextSpan(text: label, style: textStyle);
      final TextPainter tp =
          TextPainter(text: span, textDirection: TextDirection.ltr);
      tp.layout();
      tp.paint(
          canvas,
          Offset(startX - tp.width - 2,
              startY - (i * yLabelGap) - (tp.height / 2)));
    }

    // Draw data points
    final List<double> dataPoints = [1.5, 1, 0];
    final double dataPointGap = (endX - startX) / (dataPoints.length - 1);
    for (int i = 0; i < dataPoints.length; i++) {
      final double dataPoint = dataPoints[i];
      final Offset pointOffset =
          Offset(startX + (i * dataPointGap), startY - (dataPoint * unitY));
      canvas.drawPoints(PointMode.points, [pointOffset], pointPaint);
    }
  }

  @override
  bool shouldRepaint(GraphPainter oldDelegate) => false;
}

class HomeAccount extends StatelessWidget {
  const HomeAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.amber[50],
      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 80,
                  padding: EdgeInsets.only(top: 40, left: 18.0, right: 10.0),
                  child: Row(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          const Icon(
                            Icons.notifications_active_outlined,
                            size: 30,
                          ),
                          Positioned(
                            top: 5,
                            right: 0,
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(253, 172, 21, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 260),
                      Container(
                          width: 38,
                          height: 38,
                          margin: const EdgeInsets.only(right: 27),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(41, 255, 193, 7),
                          ),
                          child: const Center(
                            child: Text(
                              'BN',
                              style: TextStyle(
                                fontFamily: 'IBM Plex Sans',
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                const SizedBox(height: 6),
                Container(
                  width: 345,
                  height: 509,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 288,
                        height: 75,
                        margin: const EdgeInsets.only(top: 10, left: 29),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Account balance',
                              style: TextStyle(
                                fontFamily: 'IBM Plex Sans',
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Ksh. 1200',
                                  style: TextStyle(
                                    fontFamily: 'IBM Plex Sans',
                                    fontSize: 23,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(187, 0, 0, 0),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Handle the eye icon tap action
                                  },
                                  child: const Icon(
                                    Icons.remove_red_eye_outlined,
                                    color: Colors.grey,
                                    size: 20.53,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        alignment: Alignment.bottomLeft,
                        padding: const EdgeInsets.only(left: 39),
                        child: const Text(
                          "Account Statistics",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: "IBM Plex Sans"),
                        ),
                      ),
                      Stack(
                        children: [
                          SizedBox(
                            height: 236,
                            width: 300,
                            child: CustomPaint(
                              painter: GraphPainter(),
                            ),
                          ),
                          Positioned(
                            left: 20, // Adjust the left position as desired
                            top: 20, // Adjust the top position as desired
                            child: Image.asset(
                              'assets/Union.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Container(
                        width: 287,
                        height: 143,
                        padding: const EdgeInsets.all(1),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const SendToScreen(),
                                    ),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 60,
                                      padding: const EdgeInsets.all(5),
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromARGB(23, 255, 193, 7),
                                      ),
                                      child: Image.asset(
                                        'assets/Vector.png',
                                        height: 20,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      'Send',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'IBM Plex Sans',
                                        fontSize: 18,
                                        color: Colors.amber,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const MynumberWithdraw(),
                                    ),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 60,
                                      padding: const EdgeInsets.all(20),
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromARGB(23, 255, 193, 7),
                                      ),
                                      child: Image.asset(
                                        'assets/Vector (1).png',
                                        height: 20,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      'Withdraw',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'IBM Plex Sans',
                                        fontSize: 18,
                                        color: Colors.amber,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MynumberDeposit()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 60,
                                      padding: const EdgeInsets.all(20),
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromARGB(23, 255, 193, 7),
                                      ),
                                      child: Image.asset(
                                        'assets/Vector (2).png',
                                        height: 20,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      'Deposit',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'IBM Plex Sans',
                                        fontSize: 18,
                                        color: Colors.amber,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4),
                Container(
                  child: Container(
                    width: 345,
                    height: 93,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Recent Transactions',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(width: 95),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const AllStatementScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                'More',
                                style: TextStyle(
                                  color: Colors.amber,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 13),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Jane Mukenya',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(width: 100),
                            Text(
                              'Ksh 400',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 3),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '+254 712345678',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(width: 100),
                            Text(
                              '12:45pm',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const AccountBottomBar(),
    );
  }
}
