import 'package:flutter/material.dart';

import '../utils/dimens.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,color: Colors.grey,
          ),
        ),
        title: const TextField(
          decoration: InputDecoration.collapsed(
            hintText: "Search Play Books",
            hintStyle: TextStyle(color: Colors.grey, fontSize: MARGIN_MEDIUM_4),
          ),
          autofocus: true,
        ),
        actions: const [
          Icon(Icons.mic,color: Colors.grey,),
          SizedBox(width: MARGIN_MEDIUM_4)
        ],
      ),
    );
  }
}
