import 'package:api/api2.dart';
import 'package:api/api3.dart';
import 'package:api/api4.dart';
import 'package:api/api6.dart';
import 'package:api/api7.dart';
import 'package:api/api8.dart';
import 'package:api/chat/chat.dart';
import 'package:api/miapi.dart';
import 'package:api/noti.dart';
import 'package:flutter/material.dart';
class Myhome extends StatelessWidget {
  const Myhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Apis"),),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text("api1"),
              onTap: () {
                mostrarNotificacion();
              },
            ),
            ListTile(
              leading: const Icon(Icons.water_drop),
              title: const Text("api2"),
              onTap: () {
               Navigator.pushNamed(context, Myapi2.id);
              },
            ),
            ListTile(
            leading: const Icon(Icons.payment),
            title: const Text("api3"),
            onTap: () {
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
            );
            },
            ),
            ListTile(
               leading: const Icon(Icons.camera),
              title: const Text("api4"),
              onTap: () {
                Navigator.pushNamed(context, ScreenPage.id);
              },
            ),
            ListTile(
               leading: const Icon(Icons.chat),
              title: const Text("api5"),
              onTap: () {
                Navigator.push( context, MaterialPageRoute(builder: (context) => const SpeetchToText()),);
              },
            ),
            ListTile(
               leading: const Icon(Icons.read_more),
              title: const Text("api6"),
              onTap: () {
                Navigator.push( context, MaterialPageRoute(builder: (context) => const HomeScren()),);
              },
            ),
            ListTile(
               leading: const Icon(Icons.add_chart_rounded),
              title: const Text("mi api"),
              onTap: () {
                 Navigator.pushNamed(context, MyWidget.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.fingerprint),
              title: const Text("api7"),
              onTap: () {
                 Navigator.push( context, MaterialPageRoute(builder: (context) => const Huella()),);
              },
            ),
             ListTile(
              leading: const Icon(Icons.fingerprint),
              title: const Text("api8"),
              onTap: () {
                 Navigator.push( context, MaterialPageRoute(builder: (context) => const Myocho()),);
              },
            ),
          ],
        ),
      ),
    );
  }
}