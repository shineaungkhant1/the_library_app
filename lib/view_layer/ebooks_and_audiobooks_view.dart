import 'package:flutter/material.dart';
import 'package:the_library_app/custom_layouts/custom_layouts.dart';
import 'package:the_library_app/utils/dimens.dart';

import '../widgets/dot_bottom_sheet.dart';

class EbooksAndAudioBooksView extends StatelessWidget {
  final String imgList;
  final String bookNameList;


  const EbooksAndAudioBooksView(
      {super.key, required this.imgList, required this.bookNameList});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(right: MARGIN_MEDIUM),
        width: EBOOKS_AND_AUDIOBOOKS_WIDTH,
        child: Stack(children: [
          Column(
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
                    color: Colors.grey,
                    fontSize: TEXT_REGULAR_2X,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            right: 12,
            top: 12,
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return DotBottomSheet(titleName: "Dummy Text Title", authorName: "Dummy Text Author", image: imgList, isCarouselSlider: false,) ;
                    });
              },
              child: Row(
                children: const [
                  Icon(
                    Icons.circle,
                    size: MARGIN_SMALL_2,
                    color: Colors.white,
                  ),
                  SizedBox(width: EXTRA_SMALL),
                  Icon(
                    Icons.circle,
                    size: MARGIN_SMALL_2,
                    color: Colors.white,
                  ),
                  SizedBox(width: EXTRA_SMALL),
                  Icon(
                    Icons.circle,
                    size: MARGIN_SMALL_2,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
