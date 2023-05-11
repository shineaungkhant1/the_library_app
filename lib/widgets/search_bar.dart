import 'package:flutter/material.dart';

import '../pages/search_page.dart';
import '../utils/dimens.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SearchPage(),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(BORDER_RADIUS),
                  boxShadow: const [
                    BoxShadow(blurRadius: MARGIN_SMALL, color: Colors.grey)
                  ],
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(MARGIN_MEDIUM),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        SizedBox(width: MARGIN_MEDIUM_2),
                        Text(
                          "Search Play Books",
                          style:
                          TextStyle(fontSize: MARGIN_MEDIUM_3, color: Colors.grey),
                        ),
                      ],
                    ),
                    Container(
                      width: CONTAINER_WIDTH,
                      height: CONTAINER_HEIGHT,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://www.animeexplained.com/wp-content/uploads/2023/04/Gojo-Satoru-e1681890431295.jpg"),
                              fit: BoxFit.cover),),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}