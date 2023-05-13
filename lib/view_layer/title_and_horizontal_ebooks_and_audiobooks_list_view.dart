import 'package:flutter/material.dart';
import 'package:the_library_app/components/smart_list_view.dart';
import 'package:the_library_app/pages/ebooks_grid_view_page.dart';
import 'package:the_library_app/utils/dimens.dart';
import 'package:the_library_app/view_layer/ebooks_and_audiobooks_view.dart';

import '../pages/audiobooks_grid_view_page.dart';
import '../widgets/title_text.dart';

class TitleAndHorizontalEbooksAndAudiobooksListView extends StatelessWidget {
  final String title;
  final Function onListEachReached;
  bool isEbooks= true;

   TitleAndHorizontalEbooksAndAudiobooksListView(
      {super.key, required this.title, required this.onListEachReached,required this.isEbooks});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Container(
          //   margin: const EdgeInsets.only(left: MARGIN_MEDIUM_2),
          //   child: TitleText(title),
          // ),
          Padding(
            padding: const EdgeInsets.only(
                left: MARGIN_MEDIUM_2,
                right: MARGIN_MEDIUM_2,
                top: MARGIN_LARGE_2),
            child: GestureDetector(
              onTap: () {
                (isEbooks)?Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) =>EbooksGridViewPage() )):Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) =>AudiobooksGridViewPage() ));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  TitleText(title),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: MARGIN_MEDIUM),
          HorizontalEbooksAndAudioBooksListView(
            onListEndReached: () {
              onListEachReached();
            },
          ),
        ],
      ),
    );
  }
}

class HorizontalEbooksAndAudioBooksListView extends StatelessWidget {
  final Function onListEndReached;

  const HorizontalEbooksAndAudioBooksListView(
      {super.key, required this.onListEndReached});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    ];

    final List<String> bookNameList = [
      "UX For Beginners: A Crash",
      "UX For Beginners: A Crash",
      "UX For Beginners: A Crash",
      "UX For Beginners: A Crash",
      "UX For Beginners: A Crash",
      "UX For Beginners: A Crash"
    ];

    return Expanded(
      child: SmartHorizontalListView(
          itemCount: imgList.length,
          padding: const EdgeInsets.only(left: MARGIN_MEDIUM_2),
          itemBuilder: (BuildContext context, int index) {
            return EbooksAndAudioBooksView(
              imgList: imgList[index],
              bookNameList: bookNameList[index],
            );
          },
          onListEndReached: () {
            onListEndReached();
          }),
    );
  }
}
