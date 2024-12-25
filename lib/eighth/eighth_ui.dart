import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uichallenge/eighth/helper/encrypted_file_image.dart';
import 'package:uichallenge/eighth/helper/file_helper.dart';

class EighthUi extends StatefulWidget {
  const EighthUi({super.key});

  @override
  State<EighthUi> createState() => _HomePageState();
}

class _HomePageState extends State<EighthUi> {
  List<File> encryptedFiles = [];

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _initializeImages();
  }

  void _initializeImages() async {
    setState(() {
      isLoading = true;
    });
    final images =
    List.generate(14, (index) => 'assets/images/${index + 1}-encrypted');
    encryptedFiles = await Future.wait(images.map((e) => _saveAsFile(e)));
    setState(() {
      isLoading = false;
    });
  }

  Future<File> _saveAsFile(String assetsPath) async {
    final name = assetsPath.split('/').last.split('-').first;
    if (await ImageFileHelper.exists(name)) {
      return ImageFileHelper.getImageFile(name);
    }
    final imageData = await rootBundle.load(assetsPath);
    final imageBytes = imageData.buffer.asUint8List();
    return await ImageFileHelper.write(name, imageBytes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Decoder"),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : GridView.builder(
        padding: const EdgeInsets.all(4),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 4, crossAxisSpacing: 4),
        itemCount: encryptedFiles.length,
        itemBuilder: (context, index) {
          final file = encryptedFiles[index];
          return Stack(
            fit: StackFit.expand,
            children: [
              Image(
                image: EncryptedFileImage(file),
                fit: BoxFit.cover,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  color: Colors.black45,
                  height: 32,
                  child: Center(
                    child: Text(
                      '${index+1}-encrypted',
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}