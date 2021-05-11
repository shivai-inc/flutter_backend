import 'package:backend_flutter/node.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Backend Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Center(
            child: Column(
              children: [
                TextButton(onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Node()
                  ));
                }

  , child: Text("Node.js Backend")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
