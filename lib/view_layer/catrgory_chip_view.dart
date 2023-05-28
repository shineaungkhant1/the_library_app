import 'package:flutter/material.dart';

import '../utils/dimens.dart';
import '../utils/strings.dart';

class CategoryChipView extends StatefulWidget {


  @override
  State<CategoryChipView> createState() => _CategoryChipViewState();
}

class _CategoryChipViewState extends State<CategoryChipView> {

  bool isAnyCategorySelected = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
