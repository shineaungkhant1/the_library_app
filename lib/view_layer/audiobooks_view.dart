import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_library_app/utils/dimens.dart';
import 'package:the_library_app/view_layer/title_and_horizontal_ebooks_and_audiobooks_list_view.dart';

import '../utils/strings.dart';

class AudiobooksView extends StatefulWidget {
  @override
  State<AudiobooksView> createState() => _AudiobooksViewState();
}

class _AudiobooksViewState extends State<AudiobooksView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       TitleAndHorizontalEbooksAndAudiobooksListView(title: AUDIO_BOOKS_FOR_YOU, onListEachReached: (){
       }, isEbooks: false,),
      ],
    );
  }
}
