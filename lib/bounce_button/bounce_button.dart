import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';


class BounceButton extends StatefulWidget {
  @override
  _BounceButtonState createState() => _BounceButtonState();
}

class _BounceButtonState extends State<BounceButton> {

  bool darkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkTheme?Colors.grey.shade900:Colors.white,
      appBar: AppBar(
        title: Text("Bounce Button #1"),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Bounce(
              duration: Duration(milliseconds: 150),
              onPressed: (){
                setState(() {
                  darkTheme = !darkTheme;
                });
              },
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 30
                  ),
                  child: Text(
                      "Tema Değiştir",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: darkTheme?Colors.redAccent:Colors.deepPurple,
                  borderRadius: BorderRadius.circular(30)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
