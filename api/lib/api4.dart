import 'package:flutter/material.dart';
import 'package:api/controller/controlar.dart';
import 'package:get/get.dart';

class ScreenPage extends StatefulWidget {
  static String id = "once";

  @override
  State<ScreenPage> createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
  final ImagenController _imagenController = Get.put(ImagenController());
  final TextEditingController _imageTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text('Imagen'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: TextField(
                    controller: _imageTextController,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Buscar en Google o escribe una URL',
                        contentPadding: EdgeInsets.symmetric(horizontal: 10.0)),
                  ),
                )),
                const SizedBox(
                  width: 15.0,
                ),
                Obx(() {
                  return _imagenController.isLoading.value
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : ElevatedButton(
                          style: ElevatedButton.styleFrom(elevation: 0),
                          onPressed: () async {
                            await _imagenController.getImage(
                              imageText: _imageTextController.text.trim(),
                            );
                          },
                          child: const Text("Crear"));
                })
              ],
            ),
            const SizedBox(height: 30.0),
            Obx(() {
              return _imagenController.isLoading.value
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: _imagenController.data.value.isNotEmpty
                                  ? NetworkImage(_imagenController.data.value)
                                  : NetworkImage(
                                      'https://cdn.pixabay.com/photo/2016/04/04/14/12/monitor-1307227_960_720.jpg'))),
                    );
            })
          ],
        ),
      ),
    );
  }
}

