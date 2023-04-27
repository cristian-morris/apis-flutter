import 'package:api/apiocho.dart';
import 'package:flutter/material.dart';
class Myocho extends StatelessWidget {
  const Myocho({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          backgroundColor: Colors.green, title: const Text("Escaner QR")),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const QRViewExample(),
          ));
        },
        child: const Text('Escanear'),
      )),
    );
  }
}