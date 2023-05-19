import 'package:flutter/material.dart';
import 'package:the_library_app/widgets/rating_bar_star.dart';

import '../utils/dimens.dart';
import 'circle_avatar.dart';

class RatingFeedbackSectionView extends StatelessWidget {
  const RatingFeedbackSectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleProfile(
              imageUrl:
              "https://media.allure.com/photos/621e32e93c1316abf45cb59b/1:1/w_2911,h_2911,c_limit/kendall%20jenner%20.jpg",
            ),
            const SizedBox(
              width: MARGIN_MEDIUM_4,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Kendall Jenner",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: TEXT_REGULAR,
                    ),
                  ),
                  const SizedBox(
                    height: MARGIN_SMALL,
                  ),
                  Row(
                    children: const [
                      RatingBarStar(),
                      SizedBox(
                        width: MARGIN_SMALL,
                      ),
                      Text(
                        "5/21/14",
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: MARGIN_MEDIUM,
                  ),
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipisicing elit. At perspiciatis porro, qui ut expedita soluta nisi aliquid, "
                        "perferendis eius blanditiis tempora cumque. Consequuntur ut magni corrupti autem suscipit quia aperiam!",
                    style: TextStyle(
                      fontSize: TEXT_REGULAR_2X,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: MARGIN_LARGE_2,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleProfile(
              imageUrl:
              "https://media.allure.com/photos/621e32e93c1316abf45cb59b/1:1/w_2911,h_2911,c_limit/kendall%20jenner%20.jpg",
            ),
            const SizedBox(
              width: MARGIN_MEDIUM_4,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Kendall Jenner",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: TEXT_REGULAR,
                    ),
                  ),
                  const SizedBox(
                    height: MARGIN_SMALL,
                  ),
                  Row(
                    children: const [
                      RatingBarStar(),
                      SizedBox(
                        width: MARGIN_SMALL,
                      ),
                      Text(
                        "5/21/14",
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: MARGIN_MEDIUM,
                  ),
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipisicing elit. At perspiciatis porro, qui ut expedita soluta nisi aliquid, "
                        "perferendis eius blanditiis tempora cumque. Consequuntur ut magni corrupti autem suscipit quia aperiam!",
                    style: TextStyle(
                      fontSize: TEXT_REGULAR_2X,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: MARGIN_LARGE_2,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleProfile(
              imageUrl:
              "https://media.allure.com/photos/621e32e93c1316abf45cb59b/1:1/w_2911,h_2911,c_limit/kendall%20jenner%20.jpg",
            ),
            const SizedBox(
              width: MARGIN_MEDIUM_4,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Kendall Jenner",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: TEXT_REGULAR,
                    ),
                  ),
                  const SizedBox(
                    height: MARGIN_SMALL,
                  ),
                  Row(
                    children: const [
                      RatingBarStar(),
                      SizedBox(
                        width: MARGIN_SMALL,
                      ),
                      Text(
                        "5/21/14",
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: MARGIN_MEDIUM,
                  ),
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipisicing elit. At perspiciatis porro, qui ut expedita soluta nisi aliquid, "
                        "perferendis eius blanditiis tempora cumque. Consequuntur ut magni corrupti autem suscipit quia aperiam!",
                    style: TextStyle(
                      fontSize: TEXT_REGULAR_2X,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: MARGIN_LARGE_2,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleProfile(
              imageUrl:
              "https://media.allure.com/photos/621e32e93c1316abf45cb59b/1:1/w_2911,h_2911,c_limit/kendall%20jenner%20.jpg",
            ),
            const SizedBox(
              width: MARGIN_MEDIUM_4,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Kendall Jenner",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: TEXT_REGULAR,
                    ),
                  ),
                  const SizedBox(
                    height: MARGIN_SMALL,
                  ),
                  Row(
                    children: const [
                      RatingBarStar(),
                      SizedBox(
                        width: MARGIN_SMALL,
                      ),
                      Text(
                        "5/21/14",
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: MARGIN_MEDIUM,
                  ),
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipisicing elit. At perspiciatis porro, qui ut expedita soluta nisi aliquid, "
                        "perferendis eius blanditiis tempora cumque. Consequuntur ut magni corrupti autem suscipit quia aperiam!",
                    style: TextStyle(
                      fontSize: TEXT_REGULAR_2X,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}