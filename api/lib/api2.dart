import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
class Myapi2 extends StatefulWidget {
  static String id = "siete";

  @override
  State<Myapi2> createState() => _Myapi2State();
}

class _Myapi2State extends State<Myapi2> {
   var temp;
  Future getWeather() async {
    final url = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=maxcanu&appid=05b371e0a2c7dbac872802cefcf1fd5f&units=metric");
    http.Response response = await http.get(url);
    var results = jsonDecode(response.body);
    setState(() {
      this.temp = results['main']['temp'];
    });
  }

  @override
  void initState() {
    super.initState();
    this.getWeather();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 200.0, left: 150.0),
        child: Column(
          children:  [
            Text("maxcanu"),
            Text(temp !=null ? temp.toString() : "cargando" ),
          ],
        ),
      ),
    );
  }
}