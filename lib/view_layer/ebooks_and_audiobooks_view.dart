import 'package:flutter/material.dart';
import 'package:the_library_app/utils/dimens.dart';

class EbooksAndAudioBooksView extends StatelessWidget {

  final String imgList;
  final String bookNameList;


   const EbooksAndAudioBooksView(
      {super.key, required this.imgList,required this.bookNameList});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      },
      child: Container(
        margin: const EdgeInsets.only(right: MARGIN_MEDIUM),
        width: EBOOKS_AND_AUDIOBOOKS_WIDTH,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
             imgList,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: MARGIN_MEDIUM),
             Expanded(
              child: Text(
                bookNameList,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: TEXT_REGULAR_2X,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
