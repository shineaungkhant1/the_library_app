import 'package:flutter/material.dart';
import 'package:the_library_app/utils/dimens.dart';
import 'package:the_library_app/widgets/title_text.dart';

import '../utils/strings.dart';

class AboutPage extends StatefulWidget {
  final String bookDesc;
  final String bookTitle;

  const AboutPage({super.key, required this.bookDesc, required this.bookTitle});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black87,
          ),
        ),
        title: Text(
          widget.bookTitle,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            widget.bookDesc,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: TEXT_REGULAR_2X,
            ),
          ),
        ),
      ),
    );
  }
}
