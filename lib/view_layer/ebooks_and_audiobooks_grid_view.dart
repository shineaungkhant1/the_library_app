import 'package:flutter/material.dart';

import '../widgets/title_text.dart';

class EbooksAndAudioBooksView extends StatefulWidget {
  const EbooksAndAudioBooksView({Key? key}) : super(key: key);

  @override
  State<EbooksAndAudioBooksView> createState() => _EbooksAndAudioBooksViewState();
}

class _EbooksAndAudioBooksViewState extends State<EbooksAndAudioBooksView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,color: Colors.black87,
          ),
        ),
        title: TitleText("More Like Figersmith"),
      ),
    );
  }
}
