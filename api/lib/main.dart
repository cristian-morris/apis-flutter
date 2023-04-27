import 'package:api/api2.dart';
import 'package:api/api3.dart';
import 'package:api/api4.dart';
import 'package:api/miapi.dart';
import 'package:api/noti.dart';
import 'package:api/nuevo.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initNotifications();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Myhome() ,
      routes: {
        Myapi2.id:(context) => Myapi2(),
        ScreenPage.id:(context) => ScreenPage(),
        MyWidget.id:(context) => MyWidget(),
      },
    );
  }
}
