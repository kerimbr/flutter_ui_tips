import 'package:flutter/material.dart';

class ListPhysics extends StatefulWidget {
  @override
  _ListPhysicsState createState() => _ListPhysicsState();
}

class _ListPhysicsState extends State<ListPhysics> {
  bool _bouncing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: Text(
          _bouncing ? "Bounce Effect" : " Glow Effect",
          style: TextStyle(color: Colors.grey.shade200),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.auto_awesome,
                color: _bouncing?Colors.redAccent:Colors.grey.shade300,
              ),
              onPressed: (){
                setState(() {
                  _bouncing = !_bouncing;
                });
              }
          )
        ],
      ),
      body: ListView.builder(
          itemCount: 30,
          physics: _bouncing
              ? BouncingScrollPhysics() // magic is here
              : AlwaysScrollableScrollPhysics(),
          itemBuilder: (context, i) => Card(
                color: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text("$i. Item"),
                ),
              )),
    );
  }
}
