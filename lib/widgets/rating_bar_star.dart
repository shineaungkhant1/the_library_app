import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBarStar extends StatefulWidget {
  const RatingBarStar({Key? key}) : super(key: key);

  @override
  State<RatingBarStar> createState() => _RatingBarStarState();
}

class _RatingBarStarState extends State<RatingBarStar> {
  @override
  Widget build(BuildContext context) {
    double rating = 4.0;
    return  RatingBar.builder(
      initialRating: rating,
      minRating: 1,
      allowHalfRating: false,
      itemCount: 5,
      itemSize: 25.0,
      itemBuilder: (context, _) => Icon(
        _ <= rating ? Icons.star : Icons.star_border_outlined,
        color: Colors.blue,
      ),
      onRatingUpdate: (rating) {
        setState(() {
          rating = rating;
        });
      },
    );
  }
}
