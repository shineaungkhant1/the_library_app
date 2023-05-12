import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:the_library_app/view_layer/audiobooks_view.dart';
import 'package:the_library_app/view_layer/ebooks_view.dart';
import 'package:the_library_app/widgets/dot_bottom_sheet.dart';
import 'package:the_library_app/widgets/title_text.dart';
import '../custom_layouts/custom_layouts.dart';
import '../utils/colors.dart';
import '../utils/dimens.dart';
import '../widgets/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  int currentIndex = 0;

  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    controller.addListener(() {
      setState(() {
        currentIndex = controller.index;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    ];

    final List<Widget> imageSliders = imgList
        .map(
          (item) => Container(
            margin: const EdgeInsets.all(5.0),
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(blurRadius: MARGIN_MEDIUM_5, color: Colors.black38)
            ], borderRadius: BorderRadius.all(Radius.circular(15))),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),
              child: Stack(
                children: <Widget>[
                  Image.network(
                    item,
                    fit: BoxFit.cover,
                    width: 300,
                    height: 300,
                  ),
                  Positioned(
                    bottom: 10.0,
                    left: 0.0,
                    right: 0.0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: MARGIN_MEDIUM, right: MARGIN_MEDIUM),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            MusicIconShow(isMusic: true),
                            DownloadedIconShow(isDownloaded: false)
                          ],
                        ),
                        const SizedBox(height: MARGIN_SMALL_2),
                        const MusicBar(isMusicBar: true,),
                      ],
                      ),
                    ),
                  ),
                  Positioned(
                      right: DOT_POSTIONED_RIGHT,
                      top: DOT_POSTIONED_TOP,
                      child: GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return DotBottomSheet(
                                  titleName: "Dummy Text Title",
                                  authorName: "Dummy Text Author",
                                  image: item,
                                  isCarouselSlider: true,
                                );
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
                      ))
                ],
              ),
            ),
          ),
        )
        .toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: const SearchBar(),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(height: MARGIN_MEDIUM_4),
                SliderView(imageSliders: imageSliders),
                const SizedBox(
                  height: MARGIN_XXLARGE,
                ),
                TabBar(
                  controller: controller,
                  labelColor: Colors.blue,
                  indicatorSize: TabBarIndicatorSize.label,
                  unselectedLabelColor: Colors.grey,
                  unselectedLabelStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700),
                  labelStyle: const TextStyle(
                      color: Color.fromRGBO(85, 85, 85, 1.0),
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                  tabs: const [
                    Tab(
                      child: Text("Ebooks"),
                    ),
                    Tab(
                      child: Text("Audiobooks"),
                    )
                  ],
                ),
                Container(
                  height: HORIZONTAL_LIST_VIEW_HEIGHT,
                  child: TabBarView(
                    controller: controller,
                    children: [
                      EbooksView(),
                      AudiobooksView(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books_outlined),
            label: "Library",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_add_outlined),
            label: "Wishlist",
          ),
        ],
      ),
    );
  }
}

class SliderView extends StatelessWidget {
  const SliderView({
    super.key,
    required this.imageSliders,
  });

  final List<Widget> imageSliders;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 1.5,
        viewportFraction: 0.8,
        enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
        enableInfiniteScroll: false,
        initialPage: 2,
      ),
      items: imageSliders,
    );
  }
}
