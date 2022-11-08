
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:simple_ocr/image_preview.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PickedFile image;
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          "Simple OCR",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        elevation: 7,
      ),
      body: const Center(
        child: Text(
          "Please upload an image.",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(15),
        child: FloatingActionButton(
          onPressed: showPhotoOptions,
          child: const Icon(
            Icons.add_a_photo,
            color: Colors.white,
          ),
        ),
      ),
    ));
  }

  Future getImage(ImageSource source) async {
    Navigator.pop(context);
    final pickedFile = await picker.getImage(source: source);
    setState(() {
      if (pickedFile != null) {
        image = pickedFile;
        Navigator.push(
            context,
            CupertinoPageRoute(
                builder: (context) => ImagePreview(
                  image: image,
                )));
      } else {
       return;
      }

    });
  }

  void showPhotoOptions() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(backgroundColor: Colors.blueGrey[50],
            title: const Text("Upload an image"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: const Icon(Icons.photo_album),
                  title: const Text("Select From Gallery"),
                  onTap: () => getImage(ImageSource.gallery),
                ),
                ListTile(
                  leading: const Icon(Icons.camera_alt),
                  title: const Text("Take Photo"),
                  onTap: () => getImage(ImageSource.camera),
                ),
              ],
            ),
          );
        });
  }
}
