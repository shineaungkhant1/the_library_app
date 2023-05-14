import 'package:flutter/material.dart';
import 'package:the_library_app/widgets/title_text.dart';

import '../utils/colors.dart';
import '../utils/dimens.dart';
import '../widgets/dot_bottom_sheet.dart';
import 'books_detail_page.dart';

class EbooksGridViewPage extends StatefulWidget {
  const EbooksGridViewPage({Key? key}) : super(key: key);

  @override
  State<EbooksGridViewPage> createState() => _EbooksGridViewPageState();
}

class _EbooksGridViewPageState extends State<EbooksGridViewPage> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  final List<String> bookNameList = [
    "UX For Beginners: A Crash",
    "UX For Beginners: A Crash",
    "UX For Beginners: A Crash",
    "UX For Beginners: A Crash",
    "UX For Beginners: A Crash",
    "UX For Beginners: A Crash"
  ];

  final List<String> authorNameList = [
    "Sarah Waters",
    "Sarah Waters",
    "Sarah Waters",
    "Sarah Waters",
    "Sarah Waters",
    "Sarah Waters",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black87,
          ),
        ),
        title:const Text(
          "More Like Figersmith",
          style: TextStyle(
              color: MAIN_HOME_SCREEN_LIST_TITLE_COLOR,
              fontSize: TEXT_REGULAR_3X,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => const BooksDetail()),
            );
          },
          child: GridView.builder(
              //physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisExtent: 300,
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemCount: imgList.length,
              itemBuilder: (BuildContext context,int index){
                return Stack(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          imgList[index],
                          height: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: MARGIN_MEDIUM),
                      Text(
                        bookNameList[index],
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: TEXT_REGULAR_2X,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        authorNameList[index],
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: TEXT_REGULAR_2X,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    right: 12,
                    top: 12,
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return DotBottomSheet(titleName: bookNameList[index], authorName: authorNameList[index], image: imgList[index], isCarouselSlider: false,) ;
                            });
                      },
                      child: Row(
                        children: const [
                          Icon(
                            Icons.circle,
                            size: MARGIN_SMALL_2,
                            color: Colors.white,
                          ),
                          SizedBox(width: EXTRA_SMALL),
                          Icon(
                            Icons.circle,
                            size: MARGIN_SMALL_2,
                            color: Colors.white,
                          ),
                          SizedBox(width: EXTRA_SMALL),
                          Icon(
                            Icons.circle,
                            size: MARGIN_SMALL_2,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ]
                );
              }),
        ),
      ),
    );
  }
}
