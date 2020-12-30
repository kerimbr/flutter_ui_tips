import 'package:flutter/material.dart';
import 'package:flutter_ui_tips/bounce_button/bounce_button.dart';
import 'package:flutter_ui_tips/gradient/gradients.dart';
import 'package:flutter_ui_tips/list_physics/list_physics.dart';

void main(){
  runApp(FlutterUITipsApp());
}


class FlutterUITipsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      routes: {
        '/home' : (context)=>HomePage(),
        '/bounce_button' : (context)=>BounceButton(),
        '/list_physics' : (context)=>ListPhysics(),
        '/gradients' : (context)=>Gradients(),
      },
      initialRoute: '/home',
    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter UI Tips"
        ),
        centerTitle: true,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Card(
            child: ListTile(
              title: Text("Bounce Button #1"),
              onTap: (){
                Navigator.of(context).pushNamed('/bounce_button');
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("List Physics #2"),
              onTap: (){
                Navigator.of(context).pushNamed('/list_physics');
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Gradients #3"),
              onTap: (){
                Navigator.of(context).pushNamed('/gradients');
              },
            ),
          )
        ],
      ),
    );
  }
}
