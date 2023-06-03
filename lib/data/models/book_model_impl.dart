import 'package:the_library_app/data/models/book_model.dart';
import 'package:the_library_app/data/vos/book_vo.dart';
import '../../network/dataAgents/book_data_agent.dart';
import '../../network/dataAgents/retrofit_data_agent_impl.dart';
import '../../persistence/daos/book_dao.dart';
import '../vos/google_book_vo.dart';

class BookModelImpl extends BookModel {

  final BookDataAgent bookDataAgent = RetrofitDataAgentImpl();

  static final BookModelImpl _singleton = BookModelImpl._internal();

  factory BookModelImpl() {
    return _singleton;
  }

  BookModelImpl._internal();

  ///Daos
  BookDao mBookDao = BookDao();

  @override
  Future<List<GoogleBookVO>?> getGoogleBooksList(String searchQuery) {
    return bookDataAgent.getGoogleBooksList(searchQuery).then((value) async {
      return Future.value(value);
    });
  }

  @override
  Future<BookVO?> getBookDetails(BookVO bookVO) {
    mBookDao.saveBookVO(bookVO);
    return Future.value(bookVO);
  }


}
