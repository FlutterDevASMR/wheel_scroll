import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Row(
          children: [
            Expanded(
              child: ListWheelScrollView.useDelegate(
                itemExtent: 90,
                childDelegate: ListWheelChildBuilderDelegate(
                  builder: (context, index) => Text(
                    (index < 10) ? '0$index' : index.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  childCount: 24,
                ),
                physics: FixedExtentScrollPhysics(),
                perspective: 0.01,
                diameterRatio: 1.7,
              ),
            ),
            Text(
              ':',
              style: TextStyle(
                color: Colors.white,
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListWheelScrollView.useDelegate(
                itemExtent: 90,
                childDelegate: ListWheelChildBuilderDelegate(
                  builder: (context, index) => Text(
                    (index < 10) ? '0$index' : index.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  childCount: 60,
                ),
                physics: FixedExtentScrollPhysics(),
                perspective: 0.01,
                diameterRatio: 1.7,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
