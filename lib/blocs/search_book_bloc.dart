import 'package:flutter/foundation.dart';

import '../data/models/book_model.dart';
import '../data/models/book_model_impl.dart';
import '../data/vos/book_vo.dart';
import '../data/vos/google_book_vo.dart';

class SearchBookBloc extends ChangeNotifier {
  ///States
  List<BookVO>? mBooksList;

  ///Models
  BookModel mBookModel = BookModelImpl();

  /// Network
  SearchBookBloc(String searchQuery) {
    mBookModel.getGoogleBooksList(searchQuery).then((searchBooksList) {
      List<GoogleBookVO> searchBookList = searchBooksList ?? [];
      List<BookVO> bookList = [];
      for (var index = 0; index < searchBookList.length; index++) {
        bookList.add(searchBookList[index]
            .convertBookVO(searchBookList[index].id ?? "", index));
      }
      mBooksList = bookList;
      notifyListeners();
    }).catchError((error) {
      debugPrint(error.toString());
    });
  }

  void onSearchQuery(String query) {
    mBookModel.getGoogleBooksList(query).then((searchBooksList) {
      List<GoogleBookVO> searchBookList = searchBooksList ?? [];
      List<BookVO> bookList = [];
      for (var index = 0; index < searchBookList.length; index++) {
        bookList.add(searchBookList[index]
            .convertBookVO(searchBookList[index].id ?? "", index));
      }
      mBooksList = bookList;
      notifyListeners();
    }).catchError((error) {
      debugPrint(error.toString());
    });
  }
}
