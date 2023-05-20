import 'package:flutter/material.dart';
import 'package:the_library_app/utils/dimens.dart';
import 'package:the_library_app/view_layer/create_shelf_view.dart';

class YourShelvesView extends StatefulWidget {
  const YourShelvesView({Key? key}) : super(key: key);

  @override
  State<YourShelvesView> createState() => _YourShelvesViewState();
}

class _YourShelvesViewState extends State<YourShelvesView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: HEIGHT_BETWEEN_BOOKIMAGE_AND_TAB_BAR,
          ),
          Image.asset(
            "assets/images/book.png",
            width: 200,
          ),
          const SizedBox(
            height: MARGIN_XXLARGE_2,
          ),
          const Text(
            "No Shelves",
            style: TextStyle(
                color: Colors.black,
                fontSize: TEXT_HEADING_1X,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            width: 230,
            child: Text(
              "Create shelves to match the way you think.",
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 270,
          ),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const CreateBookShelfSectionView()),);
            },
            child: Container(
              width: 160,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.blue),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: MARGIN_MEDIUM_2,
                  ),
                  Text(
                    "Create new",
                    style:
                        TextStyle(color: Colors.white, fontSize: MARGIN_MEDIUM_5),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
