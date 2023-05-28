
import '../../data/vos/google_book_vo.dart';

abstract class BookDataAgent{

 Future<List<GoogleBookVO>?> getGoogleBooksList(String searchQuery);

}