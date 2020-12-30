import 'package:flutter/material.dart';

class Gradients extends StatefulWidget {
  @override
  _GradientsState createState() => _GradientsState();
}

class _GradientsState extends State<Gradients> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gradients"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Linear Gradients Title
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Linear Gradients",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            // LG 1
            Container(
              width: 250,
              height: 250,
              child: Center(
                child: Text(
                  "#1",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.purple, Colors.blue
                      ],
                  ),
              ),
            ),
            SizedBox(height: 30),
            // LG 2
            Container(
              width: 250,
              height: 250,
              child: Center(
                child: Text(
                  "#2",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Colors.red, Colors.yellow, Colors.blue, Colors.purple
                    ],
              )),
            ),
            SizedBox(height: 100),
            // Radial Gradients Title
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Radial Gradients",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            // RG 1
            Container(
              width: 250,
              height: 250,
              child: Center(
                child: Text(
                  "#1",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: RadialGradient(
                  colors: [
                    Colors.yellow, Colors.deepPurple
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),

            // RG 2
            Container(
              width: 250,
              height: 250,
              child: Center(
                child: Text(
                  "#2",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: RadialGradient(
                  colors: [Colors.yellow, Colors.red, Colors.purple],
                  center: Alignment(1.0, 1.0),
                ),
              ),
            ),

            SizedBox(height: 100)
          ],
        ),
      ),
    );
  }
}
