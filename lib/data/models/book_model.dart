import '../vos/book_vo.dart';
import '../vos/google_book_vo.dart';

abstract class BookModel{

  /// Network
  Future<List<GoogleBookVO>?> getGoogleBooksList(String searchQuery);


  /// Database
 Future<BookVO?> getBookDetails(BookVO bookVO);
}