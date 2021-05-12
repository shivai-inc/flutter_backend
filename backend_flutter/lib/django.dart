import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Django extends StatefulWidget {
  const Django({Key key}) : super(key: key);

  @override
  _DjangoState createState() => _DjangoState();
}

class _DjangoState extends State<Django> {
  static const String url = 'http://10.0.2.2:8000/';
  static var result = "";

  static getAPI() async{
    try{
      final response = await http.get(Uri.parse(url));
      if(response.statusCode == 200){
        return response.body.toString();
      }else{
        throw Exception("Fetching data failed");
      }
    }
    catch(e){
      return "Error Occurred !";
    }
  }
  @required
  void initState() {
    super.initState();
    getAPI().then((value) =>{
      setState((){
        result = value;
      })
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Center(
            child: Text(result),
          ),
        ),
      ),
    );
  }
}

