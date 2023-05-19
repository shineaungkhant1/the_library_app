import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:the_library_app/widgets/rating_bar_star.dart';

import '../utils/dimens.dart';

class RatingPointSectionView extends StatelessWidget {
  const RatingPointSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: const [
                Text(
                  "3.9",
                  style: TextStyle(
                      color: Colors.black, fontSize: MARGIN_XXLARGE_2),
                ),
                SizedBox(
                  height: MARGIN_MEDIUM,
                ),
                RatingBarStar(),
                SizedBox(
                  height: MARGIN_MEDIUM,
                ),
                Text(
                  "95 ratings",
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: TEXT_REGULAR_2X,
                  ),
                )
              ],
            ),
            const SizedBox(
              width: MARGIN_MEDIUM_6,
            ),
            Column(
              children: [
                Row(
                  children: [
                    const Text(
                      "5",
                      style: TextStyle(
                          color: Colors.black, fontSize: TEXT_REGULAR_2X),
                    ),
                    const SizedBox(
                      width: MARGIN_MEDIUM,
                    ),
                    LinearPercentIndicator(
                      width: 210,
                      lineHeight: 15,
                      percent: 0.3,
                      progressColor: Colors.blue,
                      backgroundColor: Colors.black12,
                      barRadius: const Radius.circular(12),
                    ),
                  ],
                ),
                const SizedBox(
                  height: MARGIN_MEDIUM,
                ),
                Row(
                  children: [
                    const Text(
                      "4",
                      style: TextStyle(
                          color: Colors.black, fontSize: TEXT_REGULAR_2X),
                    ),
                    const SizedBox(
                      width: MARGIN_MEDIUM,
                    ),
                    LinearPercentIndicator(
                      width: 210,
                      lineHeight: 15,
                      percent: 0.5,
                      progressColor: Colors.blue,
                      backgroundColor: Colors.black12,
                      barRadius: const Radius.circular(12),
                    ),
                  ],
                ),
                const SizedBox(
                  height: MARGIN_MEDIUM,
                ),
                Row(
                  children: [
                    const Text(
                      "3",
                      style: TextStyle(
                          color: Colors.black, fontSize: TEXT_REGULAR_2X),
                    ),
                    const SizedBox(
                      width: MARGIN_MEDIUM,
                    ),
                    LinearPercentIndicator(
                      width: 210,
                      lineHeight: 15,
                      percent: 0.2,
                      progressColor: Colors.blue,
                      backgroundColor: Colors.black12,
                      barRadius: const Radius.circular(12),
                    ),
                  ],
                ),
                const SizedBox(
                  height: MARGIN_MEDIUM,
                ),
                Row(
                  children: [
                    const Text(
                      "2",
                      style: TextStyle(
                          color: Colors.black, fontSize: TEXT_REGULAR_2X),
                    ),
                    const SizedBox(
                      width: MARGIN_MEDIUM,
                    ),
                    LinearPercentIndicator(
                      width: 210,
                      lineHeight: 15,
                      percent: 0.3,
                      progressColor: Colors.blue,
                      backgroundColor: Colors.black12,
                      barRadius: const Radius.circular(12),
                    ),
                  ],
                ),
                const SizedBox(
                  height: MARGIN_MEDIUM,
                ),
                Row(
                  children: [
                    const Text(
                      "1",
                      style: TextStyle(
                          color: Colors.black, fontSize: TEXT_REGULAR_2X),
                    ),
                    const SizedBox(
                      width: MARGIN_MEDIUM,
                    ),
                    LinearPercentIndicator(
                      width: 210,
                      lineHeight: 15,
                      percent: 0.3,
                      progressColor: Colors.blue,
                      backgroundColor: Colors.black12,
                      barRadius: const Radius.circular(12),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}