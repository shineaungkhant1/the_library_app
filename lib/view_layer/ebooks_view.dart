import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_library_app/utils/dimens.dart';
import 'package:the_library_app/view_layer/title_and_horizontal_ebooks_and_audiobooks_list_view.dart';

import '../utils/strings.dart';

class EbooksView extends StatefulWidget {


  @override
  State<EbooksView> createState() => _EbooksViewState();
}

class _EbooksViewState extends State<EbooksView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleAndHorizontalEbooksAndAudiobooksListView(
          title: MORE_LIKE,
          onListEachReached: () {},
          isEbooks: true,
          isMusicIcon: false,
        ),
        TitleAndHorizontalEbooksAndAudiobooksListView(
          title: E_BOOKS_FOR_YOU,
          onListEachReached: () {},
          isEbooks: true,
          isMusicIcon: false,
        ),
        TitleAndHorizontalEbooksAndAudiobooksListView(
          title: ON_YOUR_WISHLIST,
          onListEachReached: () {},
          isEbooks: true,
          isMusicIcon: false,
        ),
      ],
    );
  }
}
