import 'package:flutter/material.dart';

import '../data/vos/book_vo.dart';
import '../pages/books_detail_page.dart';
import '../utils/dimens.dart';

class SearchEbookAndAudioBookListView extends StatefulWidget {
  final List<BookVO>? mBookList;

  const SearchEbookAndAudioBookListView({super.key, required this.mBookList});

  @override
  _SearchEbookAndAudioBookListViewState createState() =>
      _SearchEbookAndAudioBookListViewState();
}

class _SearchEbookAndAudioBookListViewState
    extends State<SearchEbookAndAudioBookListView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 2, vsync: this); // set the number of tabs here
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
          controller: _tabController,
          tabs: const [
            Tab(
              child: Text(
                "Ebooks",
                style: TextStyle(
                    fontSize: TEXT_REGULAR_2X, fontWeight: FontWeight.w600),
              ),
            ), //
            Tab(
              child: Text(
                "Audiobooks",
                style: TextStyle(
                    fontSize: TEXT_REGULAR_2X, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(top: MARGIN_MEDIUM),
            child: TabBarView(
              controller: _tabController,
              children: [
                GoogleSearchBookListView(
                    isEbook: true, mBookList: widget.mBookList),
                GoogleSearchBookListView(
                    isEbook: false, mBookList: widget.mBookList),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class GoogleSearchBookListView extends StatelessWidget {
  final bool isEbook;
  final List<BookVO>? mBookList;

  const GoogleSearchBookListView(
      {super.key, required this.isEbook, required this.mBookList});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      margin: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_3),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: mBookList?.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              _navigateToBookDetailsScreen(context, mBookList?[index]);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                            height: isEbook ? 90 : 70,
                            width: isEbook ? 55 : 60,
                            margin: const EdgeInsets.only(
                                top: MARGIN_SMALL_2, bottom: MARGIN_MEDIUM),
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: (mBookList?[index]
                                            .bookImage
                                            ?.isNotEmpty ??
                                        false)
                                    ? NetworkImage(
                                        mBookList?[index].bookImage ?? "")
                                    : const NetworkImage(
                                        "https://drupal.nypl.org/sites-drupal/default/files/blogs/sJ3CT4V.gif"),
                              ),
                            ),
                          ),
                    const SizedBox(width: 30,),
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Text(
                            mBookList?[index].title ?? "",
                            style: const TextStyle(
                                fontSize: TEXT_REGULAR_2X,
                                fontWeight: FontWeight.w600),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Text(
                            isEbook
                                ? " ${mBookList?[index].author ?? ""} \n Ebook"
                                : "${mBookList?[index].author ?? ""} \n Audiobook",
                            style: const TextStyle(
                                fontSize: TEXT_REGULAR,
                                fontWeight: FontWeight.w400),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

Future<dynamic> _navigateToBookDetailsScreen(
    BuildContext context, BookVO? bookVO) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => BooksDetailPage(),
    ),
  );
}
