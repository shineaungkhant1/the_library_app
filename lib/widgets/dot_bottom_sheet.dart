import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/dimens.dart';

class DotBottomSheet extends StatefulWidget {
  String? titleName;
  String? authorName;
  String? image;
  bool isCarouselSlider = true;

  DotBottomSheet({
    super.key,
    required this.titleName,
    required this.authorName,
    required this.image,
    required this.isCarouselSlider,
  });

  @override
  State<DotBottomSheet> createState() => _DotBottomSheetState();
}

class _DotBottomSheetState extends State<DotBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: MARGIN_MEDIUM_6, horizontal: MARGIN_LARGE_2),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      widget.image ?? "",
                      fit: BoxFit.cover,
                      width: 70,
                      height: 110,
                    ),
                    const SizedBox(
                      width: MARGIN_MEDIUM_2,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.titleName ?? "",
                          style: const TextStyle(
                              color: MAIN_HOME_SCREEN_LIST_TITLE_COLOR,
                              fontSize: TEXT_REGULAR_3X,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: MARGIN_MEDIUM,
                        ),
                        Text(
                          widget.authorName ?? "",
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: TEXT_REGULAR,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: MARGIN_MEDIUM_6, horizontal: MARGIN_LARGE_2),
            child: (widget.isCarouselSlider)
                ? Column(
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.file_download_outlined,
                            color: Color.fromRGBO(95, 99, 105, 1.0),
                          ),
                          SizedBox(
                            width: MARGIN_MEDIUM,
                          ),
                          Text(
                            "Download",
                            style: TextStyle(
                              color: MAIN_HOME_SCREEN_LIST_TITLE_COLOR,
                              fontSize: TEXT_REGULAR_2X,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: MARGIN_MEDIUM_3,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.delete_forever_outlined,
                            color: Color.fromRGBO(95, 99, 105, 1.0),
                          ),
                          SizedBox(
                            width: MARGIN_MEDIUM,
                          ),
                          Text(
                            "Delete from your library",
                            style: TextStyle(
                              color: MAIN_HOME_SCREEN_LIST_TITLE_COLOR,
                              fontSize: TEXT_REGULAR_2X,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: MARGIN_MEDIUM_3,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.add,
                            color: Color.fromRGBO(95, 99, 105, 1.0),
                          ),
                          SizedBox(
                            width: MARGIN_MEDIUM,
                          ),
                          Text(
                            "Add to shelves...",
                            style: TextStyle(
                              color: MAIN_HOME_SCREEN_LIST_TITLE_COLOR,
                              fontSize: TEXT_REGULAR_2X,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: MARGIN_MEDIUM_3,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.done,
                            color: Color.fromRGBO(95, 99, 105, 1.0),
                          ),
                          SizedBox(
                            width: MARGIN_MEDIUM,
                          ),
                          Text(
                            "Mark as read",
                            style: TextStyle(
                              color: MAIN_HOME_SCREEN_LIST_TITLE_COLOR,
                              fontSize: TEXT_REGULAR_2X,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                : Column(
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.library_books,
                            color: Color.fromRGBO(95, 99, 105, 1.0),
                          ),
                          SizedBox(
                            width: MARGIN_MEDIUM,
                          ),
                          Text(
                            "Free sample",
                            style: TextStyle(
                              color: MAIN_HOME_SCREEN_LIST_TITLE_COLOR,
                              fontSize: TEXT_REGULAR_2X,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: MARGIN_MEDIUM_3,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.bookmark_add_outlined,
                            color: Color.fromRGBO(95, 99, 105, 1.0),
                          ),
                          SizedBox(
                            width: MARGIN_MEDIUM,
                          ),
                          Text(
                            "Add to wishlist",
                            style: TextStyle(
                              color: MAIN_HOME_SCREEN_LIST_TITLE_COLOR,
                              fontSize: TEXT_REGULAR_2X,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: MARGIN_MEDIUM_3,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.book_outlined,
                            color: Color.fromRGBO(95, 99, 105, 1.0),
                          ),
                          SizedBox(
                            width: MARGIN_MEDIUM,
                          ),
                          Text(
                            "About this book",
                            style: TextStyle(
                              color: MAIN_HOME_SCREEN_LIST_TITLE_COLOR,
                              fontSize: TEXT_REGULAR_2X,
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
          )
        ],
      ),
    );
  }
}
