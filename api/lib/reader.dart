import 'package:flutter/material.dart';
import 'package:api/model.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Reader extends StatefulWidget {
  Reader(this.doc, {Key? key}) : super(key: key);
  Document doc;
  @override
  State<Reader> createState() => _ReaderState();
}

class _ReaderState extends State<Reader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(widget.doc.doc_title!),
      ),
      body: Container(
        child: SfPdfViewer.network(widget.doc.doc_url!),
      ),
    );
  }
}