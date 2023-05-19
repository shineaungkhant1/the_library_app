import 'package:flutter/material.dart';
import 'package:the_library_app/utils/dimens.dart';
import 'package:the_library_app/widgets/title_text.dart';

import '../utils/strings.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
        title: TitleText(ABOUT_PAGE_TITLE),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              Text(
                "Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta totam quo repellendus voluptas delectus magni voluptatem! Fugiat consequatur velit ad asperiores dolorem debitis perferendis atque maxime. Exercitationem esse ab deserunt."
                " Rerum animi, similique dolores fugit error ducimus sint tempore illo dicta veritatis dolore officia! Debitis distinctio, esse error dolores perspiciatis animi saepe asperiores doloribus quod consequatur eos laboriosam natus! Necessitatibus?",
                style:
                    TextStyle(color: Colors.black54, fontSize: TEXT_REGULAR_2X),
              ),
              SizedBox(
                height: MARGIN_MEDIUM_6,
              ),
              Text(
                "Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta totam quo repellendus voluptas delectus magni voluptatem! Fugiat consequatur velit ad asperiores dolorem debitis perferendis atque maxime. Exercitationem esse ab deserunt."
                " Rerum animi, similique dolores fugit error ducimus sint tempore illo dicta veritatis dolore officia! Debitis distinctio, esse error dolores perspiciatis animi saepe asperiores doloribus quod consequatur eos laboriosam natus! Necessitatibus?"
                "Ut, quam! Exercitationem cupiditate eaque molestiae optio vel error nostrum, culpa praesentium numquam odit corrupti perferendis nobis recusandae. Veniam maxime consectetur vel laborum commodi! Dolor, vero voluptate? Ipsa, obcaecati alias?",
                style:
                    TextStyle(color: Colors.black54, fontSize: TEXT_REGULAR_2X),
              ),
              SizedBox(
                height: MARGIN_MEDIUM_6,
              ),
              Text(
                "Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta totam quo repellendus voluptas delectus magni voluptatem! Fugiat consequatur velit ad asperiores dolorem debitis perferendis atque maxime. Exercitationem esse ab deserunt."
                    " Rerum animi, similique dolores fugit error ducimus sint tempore illo dicta veritatis dolore officia! Debitis distinctio, esse error dolores perspiciatis animi saepe asperiores doloribus quod consequatur eos laboriosam natus! Necessitatibus?"
                    "Ut, quam! Exercitationem cupiditate eaque molestiae optio vel error nostrum, culpa praesentium numquam odit corrupti perferendis nobis recusandae. Veniam maxime consectetur vel laborum commodi! Dolor, vero voluptate? Ipsa, obcaecati alias?",
                style:
                TextStyle(color: Colors.black54, fontSize: TEXT_REGULAR_2X),
              ),
              SizedBox(
                height: MARGIN_MEDIUM_6,
              ),
              Text(
                "Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta totam quo repellendus voluptas delectus magni voluptatem! Fugiat consequatur velit ad asperiores dolorem debitis perferendis atque maxime. Exercitationem esse ab deserunt."
                    " Rerum animi, similique dolores fugit error ducimus sint tempore illo dicta veritatis dolore officia! Debitis distinctio, esse error dolores perspiciatis animi saepe asperiores doloribus quod consequatur eos laboriosam natus! Necessitatibus?"
                    "Ut, quam! Exercitationem cupiditate eaque molestiae optio vel error nostrum, culpa praesentium numquam odit corrupti perferendis nobis recusandae. Veniam maxime consectetur vel laborum commodi! Dolor, vero voluptate? Ipsa, obcaecati alias?",
                style:
                TextStyle(color: Colors.black54, fontSize: TEXT_REGULAR_2X),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
