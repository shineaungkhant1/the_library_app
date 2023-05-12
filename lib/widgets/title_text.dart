import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/dimens.dart';

class TitleText extends StatelessWidget {
  final String text;

  TitleText(this.text);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        text,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
            color: MAIN_HOME_SCREEN_LIST_TITLE_COLOR,
            fontSize: TEXT_REGULAR_3X,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}

