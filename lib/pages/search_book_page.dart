import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_library_app/blocs/search_book_bloc.dart';
import 'package:the_library_app/widgets/search_bar_text_field.dart';

import '../data/vos/book_vo.dart';
import '../utils/colors.dart';
import '../utils/dimens.dart';
import '../view_layer/SearchEbookAndAudioBookListView.dart';

class SearchBookPage extends StatefulWidget {
  const SearchBookPage({Key? key}) : super(key: key);

  @override
  State<SearchBookPage> createState() => _SearchBookPageState();
}

class _SearchBookPageState extends State<SearchBookPage> {
  late String _searchText = '';
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SearchBookBloc(_searchText),
      child: Selector<SearchBookBloc, List<BookVO>?>(
        selector: (context, bloc) => bloc.mBooksList,
        builder: (context, bookList, child) => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            automaticallyImplyLeading: false,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.grey,
              ),
            ),
            title: SearchBarTextField(
              onSearch: (String search) {
                setState(
                  () {
                    _searchText = search;
                    var bloc =
                        Provider.of<SearchBookBloc>(context, listen: false);
                    bloc.onSearchQuery(_searchText);
                  },
                );
              },
            ),
          ),
          body: Container(
              color: PRIMARY_COLOR,
              child: _searchText.isNotEmpty?
              SearchEbookAndAudioBookListView(
                mBookList: bookList,
              )
                  :Container()
          ),
        ),
      ),
    );
  }
}
