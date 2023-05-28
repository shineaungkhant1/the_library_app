import 'package:flutter/material.dart';
import 'package:the_library_app/utils/dimens.dart';

import '../utils/strings.dart';

class SortingChangeBottomSheet extends StatefulWidget {
  String selectedName;
  final Function(String) onNameSelected;

  SortingChangeBottomSheet({super.key, required this.selectedName, required this.onNameSelected});


  @override
  State<SortingChangeBottomSheet> createState() => _SortingChangeBottomSheetState();
}

class MyRadioModel {
  final String name;
  bool isSelected;

  MyRadioModel({required this.name, this.isSelected = false});
}

class _SortingChangeBottomSheetState extends State<SortingChangeBottomSheet> {




  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 290,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "Sort by",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: TEXT_REGULAR_3X,
                  fontWeight: FontWeight.bold),
            ),
          ),
          // const SizedBox(height: MARGIN_MEDIUM,),
          const Divider(
            color: Colors.black,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int index = 0; index < radioList.length; index++)
                RadioListTile(
                  title: Text(radioList[index].name),
                  value: radioList[index].name,
                  groupValue: widget.selectedName,
                  onChanged: (value) {
                    setState(() {
                      widget.selectedName = value.toString();
                      for (var item in viewList) {
                        item.isSelected = item.name == value.toString();
                      }
                    });
                    widget.onNameSelected(widget.selectedName);
                    Navigator.pop(context);
                  },
                  selected: radioList[index].isSelected,
                ),
            ],
          )
        ],
      ),
    );
  }
}
