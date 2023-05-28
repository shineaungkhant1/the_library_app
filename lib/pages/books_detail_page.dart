import 'package:flutter/material.dart';
import 'package:the_library_app/pages/ratings_and_review_page.dart';
import 'package:the_library_app/widgets/title_text.dart';
import '../utils/colors.dart';
import '../utils/dimens.dart';
import '../widgets/rating_and_reviews.dart';
import '../widgets/rating_point.dart';
import 'about_page.dart';

class BooksDetailPage extends StatefulWidget {
  const BooksDetailPage({Key? key}) : super(key: key);

  @override
  State<BooksDetailPage> createState() => _BooksDetailPageState();
}

class _BooksDetailPageState extends State<BooksDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        actions: const [
          Padding(
            padding: EdgeInsets.all(13.0),
            child: Image(
              image: AssetImage("assets/icons/export.png"),
              width: 20,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MARGIN_MEDIUM_5, vertical: MARGIN_LARGE),
              child: BookCoverNameAndAuthorSectionView(),
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: MARGIN_MEDIUM_3,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_5),
              child: FreeSampleAndAddToWishlistSectionView(),
            ),
            SizedBox(
              height: MARGIN_MEDIUM_3,
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: MARGIN_MEDIUM_3,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_5),
              child: AboutThisEbookSectionView(),
            ),
            SizedBox(
              height: MARGIN_MEDIUM_3,
            ),
            SizedBox(
              height: MARGIN_MEDIUM_6,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_5),
              child: RatingFeedbackSectionView(),
            ),
            SizedBox(
              height: MARGIN_LARGE,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_5),
              child: PublishedSectionView(),
            ),
          ],
        ),
      ),
    );
  }
}

class PublishedSectionView extends StatelessWidget {
  const PublishedSectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        Text(
          "Published",
          style: TextStyle(
              color: MAIN_HOME_SCREEN_LIST_TITLE_COLOR,
              fontSize: TEXT_REGULAR_3X,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: MARGIN_MEDIUM,
        ),
        Text(
          "December 1,2007 . Open Road + Grove/Atlantic",
          style: TextStyle(
            fontSize: TEXT_REGULAR_2X,
          ),
        ),
        SizedBox(
          height: MARGIN_LARGE,
        ),
      ],
    );
  }
}



class StarContainerSectionView extends StatelessWidget {
  const StarContainerSectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 55,
          height: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "1",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: TEXT_REGULAR_2X,
                ),
              ),
              Icon(
                Icons.star,
                size: 20,
              )
            ],
          ),
        ),
        const SizedBox(
          width: MARGIN_MEDIUM_5,
        ),
        Container(
          width: 55,
          height: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "2",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: TEXT_REGULAR_2X,
                ),
              ),
              Icon(
                Icons.star,
                size: 20,
              )
            ],
          ),
        ),
        const SizedBox(
          width: MARGIN_MEDIUM_5,
        ),
        Container(
          width: 55,
          height: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "3",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: TEXT_REGULAR_2X,
                ),
              ),
              Icon(
                Icons.star,
                size: 20,
              )
            ],
          ),
        ),
        const SizedBox(
          width: MARGIN_MEDIUM_5,
        ),
        Container(
          width: 55,
          height: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "4",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: TEXT_REGULAR_2X,
                ),
              ),
              Icon(
                Icons.star,
                size: 20,
              )
            ],
          ),
        ),
        const SizedBox(
          width: MARGIN_MEDIUM_5,
        ),
        Container(
          width: 55,
          height: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "5",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: TEXT_REGULAR_2X,
                ),
              ),
              Icon(
                Icons.star,
                size: 20,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class FreeSampleAndAddToWishlistSectionView extends StatelessWidget {
  const FreeSampleAndAddToWishlistSectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 130,
              height: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(color: Colors.grey)),
              child: const Center(
                child: Text(
                  "Free Sample",
                  style:
                      TextStyle(color: Colors.blue, fontSize: MARGIN_MEDIUM_5),
                ),
              ),
            ),
            const SizedBox(
              width: MARGIN_MEDIUM_6,
            ),
            Container(
              width: 200,
              height: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3), color: Colors.blue),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.bookmark_add_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: MARGIN_MEDIUM_2,
                  ),
                  Text(
                    "Add to wishlist",
                    style: TextStyle(
                        color: Colors.white, fontSize: MARGIN_MEDIUM_5),
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: MARGIN_MEDIUM_3,
        ),
        Row(
          children: const [
            Icon(
              Icons.info_outline,
              color: Colors.black87,
            ),
            SizedBox(
              width: MARGIN_MEDIUM_3,
            ),
            Expanded(
              child: Text(
                "Books that you buy on the Google Play website can be read in this app.",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: MARGIN_MEDIUM_4,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

class AboutThisEbookSectionView extends StatefulWidget {
  const AboutThisEbookSectionView({Key? key}) : super(key: key);

  @override
  State<AboutThisEbookSectionView> createState() =>
      _AboutThisEbookSectionViewState();
}

class _AboutThisEbookSectionViewState extends State<AboutThisEbookSectionView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TitleText("About this ebook"),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                );
              },
              child: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.blue,
              ),
            )
          ],
        ),
        const SizedBox(height: MARGIN_MEDIUM_3),
        const Text(
          "Lorem ipsum dolor sit amet, consectetur adipisicing elit. At perspiciatis porro, qui ut expedita soluta nisi aliquid, "
          "perferendis eius blanditiis tempora cumque. Consequuntur ut magni corrupti autem suscipit quia aperiam!",
          style: TextStyle(
            color: Colors.black87,
            fontSize: TEXT_REGULAR_2X,
          ),
        ),
        const SizedBox(
          height: MARGIN_LARGE,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TitleText("Ratings and reviews"),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const RatingAndReviewsPage()),
                );
              },
              child: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.blue,
              ),
            )
          ],
        ),
        const SizedBox(
          height: MARGIN_MEDIUM_4,
        ),
        const RatingPointSectionView(),
      ],
    );
  }
}



class BookCoverNameAndAuthorSectionView extends StatelessWidget {
  const BookCoverNameAndAuthorSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 100,
          height: 170,
          decoration: BoxDecoration(
            color: Colors.black26,
            image: const DecorationImage(
              image: NetworkImage(
                "https://media.newyorker.com/photos/644832d7ed5431b8988b44c7/master/w_1600%2Cc_limit/230508_r42272web.jpg",
              ),
              fit: BoxFit.fitHeight,
            ),
            borderRadius: BorderRadius.circular(MARGIN_MEDIUM),
          ),
        ),
        const SizedBox(width: MARGIN_LARGE_2),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Oranges Are Not the Only Fruit",
                style: TextStyle(
                  fontSize: MARGIN_LARGE,
                  fontWeight: FontWeight.w600,
                  height: 1.4,
                ),
              ),
              SizedBox(height: MARGIN_MEDIUM),
              Text(
                "Jeanette Winterson",
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: MARGIN_MEDIUM),
              Text(
                "Ebook . 187 pages",
                style: TextStyle(
                  color: Color.fromRGBO(94, 98, 101, 1.0),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
