import 'package:flutter/material.dart';
import 'package:the_library_app/utils/dimens.dart';
import 'package:the_library_app/utils/strings.dart';
import 'package:the_library_app/widgets/sorting_change_bottom_sheet.dart';

import '../widgets/views_change_bottom_sheet.dart';

class YourBooksView extends StatefulWidget {
  const YourBooksView({Key? key}) : super(key: key);

  @override
  State<YourBooksView> createState() => _YourBooksViewState();
}

class Category {
  final String name;
  bool isSelected;

  Category({required this.name, this.isSelected = false});
}

List<Category> categories = [
  Category(name: 'Ebooks'),
  Category(name: 'Audiobooks'),
  Category(name: 'Comics'),
  Category(name: 'Purchases'),
  Category(name: 'Samples'),
  Category(name: 'Uploads'),
];

class _YourBooksViewState extends State<YourBooksView> {

  String? selectedSort;
  String? selectedView;

  bool isAnyCategorySelected = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: MARGIN_MEDIUM_2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(
            //   width: 400,
            //   height: 60,
            //   child: ListView.builder(
            //     padding: const EdgeInsets.all(MARGIN_MEDIUM),
            //     scrollDirection: Axis.horizontal,
            //     itemCount: categories.length + 1,
            //     itemBuilder: (context, index) {
            //       if (index == 0) {
            //         return Row(
            //           children: [
            //             GestureDetector(
            //               onTap: () {
            //                 setState(() {
            //                   for (var category in categories) {
            //                     category.isSelected = false;
            //                   }
            //                 });
            //               },
            //               child: Container(
            //                 decoration: BoxDecoration(
            //                   shape: BoxShape.circle,
            //                   color: categories
            //                           .any((category) => category.isSelected)
            //                       ? Colors.blue
            //                       : Colors.grey,
            //                 ),
            //                 child: const Icon(
            //                   Icons.cancel,
            //                   color: Colors.white,
            //                 ),
            //               ),
            //             ),
            //             const SizedBox(width: MARGIN_MEDIUM_2),
            //           ],
            //         );
            //       } else {
            //         final category = categories[index - 1];
            //         return Row(
            //           children: [
            //             GestureDetector(
            //               onTap: () {
            //                 setState(() {
            //                   category.isSelected = !category.isSelected;
            //                 });
            //               },
            //               child: ChoiceChip(
            //                 padding: const EdgeInsets.all(MARGIN_MEDIUM_3),
            //                 label: Text(category.name),
            //                 selected: category.isSelected,
            //                 selectedColor: Colors.blue,
            //                 onSelected: (isSelected) {
            //                   setState(() {
            //                     category.isSelected = isSelected;
            //                   });
            //                 },
            //                 avatar: category.isSelected
            //                     ? const Icon(
            //                         Icons.clear,
            //                         size: 20.0,
            //                         color: Colors.white,
            //                       )
            //                     : null,
            //               ),
            //             ),
            //             const SizedBox(
            //                 width:
            //                     MARGIN_MEDIUM_2), // Add space between each category
            //           ],
            //         );
            //       }
            //     },
            //   ),
            // ),
          SizedBox(
          width: 400,
          height: 60,
          child: ListView.builder(
            padding: const EdgeInsets.all(MARGIN_MEDIUM),
            scrollDirection: Axis.horizontal,
            itemCount: categories.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          for (var category in categories) {
                            category.isSelected = false;
                          }
                          isAnyCategorySelected = false;
                        });
                      },
                      child: AnimatedOpacity(
                        opacity: isAnyCategorySelected ? 1.0 : 0.0,
                        duration: const Duration(milliseconds: 200),
                        child: Container(
                          decoration:  BoxDecoration(
                            shape: BoxShape.circle,
                            color: categories
                                .any((category) => category.isSelected)
                                ? Colors.blue
                                : Colors.grey,
                          ),
                          child: const Icon(
                            Icons.cancel,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: MARGIN_MEDIUM_2),
                  ],
                );
              } else {
                final category = categories[index - 1];
                return Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          category.isSelected = !category.isSelected;
                          isAnyCategorySelected = categories.any((category) => category.isSelected);
                        });
                      },
                      child: ChoiceChip(
                        padding: const EdgeInsets.all(MARGIN_MEDIUM_3),
                        label: Text(category.name),
                        selected: category.isSelected,
                        selectedColor: Colors.blue,
                        onSelected: (isSelected) {
                          setState(() {
                            category.isSelected = isSelected;
                            isAnyCategorySelected = categories.any((category) => category.isSelected);
                          });
                        },
                        avatar: category.isSelected
                            ? const Icon(
                          Icons.clear,
                          size: 20.0,
                          color: Colors.white,
                        )
                            : null,
                      ),
                    ),
                    const SizedBox(
                        width:
                        MARGIN_MEDIUM_2), // Add space between each category
                  ],
                );
              }
            },
          ),
        ),
            const SizedBox(
              height: MARGIN_MEDIUM_4,
            ),
            Row(
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
            ),
          ],
        ),
      ),
    );
  }
}
