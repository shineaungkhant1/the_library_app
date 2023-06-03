import 'package:flutter/foundation.dart';
import 'package:the_library_app/data/models/book_model_impl.dart';

import '../data/models/book_model.dart';
import '../data/vos/book_vo.dart';

class BookDetailsBloc extends ChangeNotifier {
  ///State
  BookVO? bookVO;

  ///Model
  BookModel mLibraryModel = BookModelImpl();

  BookDetailsBloc(BookVO? bookVO) {
    debugPrint("detail page bloc");

    ///Book Detail
    if (bookVO != null) {
      mLibraryModel.getBookDetails(bookVO).then((value) {
        if (value != null) {
          this.bookVO = value;
        }
        notifyListeners();
      }).catchError((error) {
        debugPrint(error.toString());
      });
    }
  }
}
