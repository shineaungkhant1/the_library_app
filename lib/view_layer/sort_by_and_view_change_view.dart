import 'package:flutter/material.dart';

import '../utils/dimens.dart';
import '../utils/strings.dart';
import '../widgets/sorting_change_bottom_sheet.dart';
import '../widgets/views_change_bottom_sheet.dart';

class SortByAndViewChangeView extends StatefulWidget {
  const SortByAndViewChangeView({Key? key}) : super(key: key);

  @override
  State<SortByAndViewChangeView> createState() => _SortByAndViewChangeViewState();
}

class _SortByAndViewChangeViewState extends State<SortByAndViewChangeView> {

  String? selectedSort;
  String? selectedView;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return  SortingChangeBottomSheet(selectedName: selectedSort?? radioList[0].name, onNameSelected: (name) {
                    setState(() {
                      selectedSort = name;
                    });
                  },);
                });
          },
          child: const Icon(
            Icons.sort,
            color: Colors.black87,
          ),
        ),
        const SizedBox(
          width: MARGIN_MEDIUM,
        ),
        Expanded(
          child: Text(
            "Sort by: ${selectedSort??radioList[0].name}",
            style: const TextStyle(
              color: Colors.black87,
            ),
          ),
        ),
        const SizedBox(
          width: WIDTH_BETWEEN_SORT_BY_AND_ICON,
        ),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return  ViewsChangeBottomSheet(selectedName: selectedView?? viewList[0].name, onNameSelected: (name) {
                    setState(() {
                      selectedView = name;
                    });
                  },);
                });
          },
          child: const Icon(
            Icons.view_list_outlined,
            color: Colors.black87,
          ),
        )
      ],
    );
  }
}
