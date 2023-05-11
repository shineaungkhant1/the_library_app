import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_library_app/utils/dimens.dart';
import 'package:the_library_app/view_layer/horizontal_ebooks_and_audiobooks_list_view.dart';

class EbooksView extends StatefulWidget {
  final Function onTapNowShowing;

  const EbooksView({super.key, required this.onTapNowShowing});

  @override
  State<EbooksView> createState() => _EbooksViewState();
}

class _EbooksViewState extends State<EbooksView> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: MARGIN_MEDIUM_2,
              right: MARGIN_MEDIUM_2,
              top: MARGIN_LARGE_2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Expanded(
                child: Text(
                  "Don't Make Me Think, Revisited: A Common Sense Approach to Web Usability"
                  " (3rd Edition) (Voices That Matter) 3rd Edition ",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: TEXT_REGULAR_3X, color: Colors.black),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.blue,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: MARGIN_MEDIUM,
        ),
        // SizedBox(
        //   height: 200,
        //   child: ListView.separated(
        //     scrollDirection: Axis.horizontal,
        //     itemCount: imgList.length, // Replace images with your list of image URLs
        //     itemBuilder: (BuildContext context, int index) {
        //       return  Image.network(imgList[index],fit: BoxFit.cover,width: 200,);
        //     }, separatorBuilder: (BuildContext context, int index) {
        //       return SizedBox(width: MARGIN_MEDIUM);
        //   },
        //   ),
        // )
        HorizontalEbooksAndAudioBooksListView(
          onListEndReached: () {},
        ),
      ],
    );
  }
}
