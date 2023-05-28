import 'package:flutter/material.dart';
import 'package:the_library_app/utils/dimens.dart';
import 'package:the_library_app/utils/strings.dart';
import 'package:the_library_app/view_layer/sort_by_and_view_change_view.dart';
import 'package:the_library_app/widgets/sorting_change_bottom_sheet.dart';

import '../widgets/views_change_bottom_sheet.dart';
import 'catrgory_chip_view.dart';

class YourBooksView extends StatefulWidget {
  const YourBooksView({Key? key}) : super(key: key);

  @override
  State<YourBooksView> createState() => _YourBooksViewState();
}



class _YourBooksViewState extends State<YourBooksView> {




  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: MARGIN_MEDIUM_2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            CategoryChipView(),
            const SizedBox(
              height: MARGIN_MEDIUM_4,
            ),
            SortByAndViewChangeView(),


          ],
        ),
      ),
    );
  }
}
