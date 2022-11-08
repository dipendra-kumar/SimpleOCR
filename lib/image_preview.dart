import 'dart:io';
import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'details_page.dart';

class ImagePreview extends StatefulWidget {
  final PickedFile image;

  const ImagePreview({Key key, this.image}) : super(key: key);

  @override
  State<ImagePreview> createState() => _ImagePreviewState();
}

class _ImagePreviewState extends State<ImagePreview> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Preview Image'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.file(
                File(widget.image.path),
                fit: BoxFit.contain,
              )),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(15.0),
          child: FloatingActionButton(
            onPressed: scanText,
            child: const Icon(
              Icons.document_scanner_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }

  Future scanText() async {
    (widget.image.path == null)
        ? noImageSelected()
        : showDialog(
            context: context,
            builder: (context) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          );
    final FirebaseVisionImage visionImage =
        FirebaseVisionImage.fromFile(File(widget.image.path));
    final TextRecognizer textRecognizer =
        FirebaseVision.instance.textRecognizer();
    final VisionText visionText =
        await textRecognizer.processImage(visionImage);
    text = '';
    for (TextBlock block in visionText.blocks) {
      for (TextLine line in block.lines) {
        text += '${line.text}\n';
      }
    }
    Navigator.pop(context);
    Navigator.push(
        context,
        CupertinoPageRoute(
            builder: (context) => DetailsPage(
                  text: text,
                )));
  }

  Widget noImageSelected() {
    return const Center(
      child: Text("No Image Selected"),
    );
  }
}
