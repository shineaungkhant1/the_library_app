import 'package:flutter/material.dart';
import 'package:the_library_app/pages/books_detail_page.dart';
import 'package:the_library_app/utils/dimens.dart';
import 'package:the_library_app/widgets/rating_and_reviews.dart';
import 'package:the_library_app/widgets/rating_point.dart';

import '../utils/strings.dart';
import '../widgets/title_text.dart';

class RatingAndReviewsPage extends StatefulWidget {
  const RatingAndReviewsPage({Key? key}) : super(key: key);

  @override
  State<RatingAndReviewsPage> createState() => _RatingAndReviewsPageState();
}

class _RatingAndReviewsPageState extends State<RatingAndReviewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black87,
          ),
        ),
        title: const Text(
          "Ratings and reviews",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              RatingPointSectionView(),
              SizedBox(height: MARGIN_MEDIUM_6,),
              StarContainerSectionView(),
              SizedBox(height: MARGIN_MEDIUM_6,),
              RatingFeedbackSectionView(),
            ],
          ),
        ),
      ),
    );
  }
}
