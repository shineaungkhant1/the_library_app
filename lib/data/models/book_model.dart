import '../vos/google_book_vo.dart';

abstract class BookModel{

  /// Network
  Future<List<GoogleBookVO>?> getGoogleBooksList(String searchQuery);
}