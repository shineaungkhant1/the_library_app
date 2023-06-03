import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../data/vos/book_vo.dart';
import '../../utils/strings.dart';
import '../hive_constants.dart';

class BookDao {
  static final BookDao _singleton = BookDao._internal();

  factory BookDao() {
    return _singleton;
  }

  BookDao._internal();

  void saveBookVO(BookVO bookVO) async {
    bookVO.bookId = generateCurrentTime();
    bookVO.selected = false;
    List<BookVO> bookList = getAllBooks(1);
    if(bookList.isNotEmpty && bookList.length > 0)
      {

        for(int i=0; i<bookList.length;i++)
          {
            if(bookList[i].categoryId == bookVO.categoryId &&
                bookList[i].title == bookVO.title &&
                bookList[i].author == bookVO.author)
              {
                getBookBox().deleteAt(i);
              }
          }
        return getBookBox().put(bookVO.bookId, bookVO);
      }else{
      return getBookBox().put(bookVO.bookId, bookVO);
    }
  }

  BookVO? getBookById(int bookId) {
    return getBookBox().get(bookId);
  }

  List<BookVO> getAllBooks(int sortingFlag) {

    final data = getBookBox().values.toList();

    switch(sortingFlag)
    {
      case 1:
        data.reversed;
        break;
      case 2:
        data.sort((a,b) => (a.title??"").compareTo(b.title??""));
        break;
      case 3:
        data.sort((a,b) => (a.author??"").compareTo(b.author??""));
        break;
      default:
        data.sort((a, b) => a.bookId?.compareTo(b.bookId??"")??0);
    }

    return  data;
  }

  List<BookVO> getAllBooksByCategory(List<BookVO>? selectedCategoryBookList) {

    final data = getBookBox().values.toList();
    List<BookVO> selectedDataList = [];

    selectedCategoryBookList?.forEach((selectedCategoryObj) {
      selectedDataList.addAll(data.where((element) => element.categoryId == selectedCategoryObj.categoryId).toList());
    });

    return  selectedDataList;
  }


  List<BookVO> getCategoryList(){
    if (getAllBooks(1) != null && (getAllBooks(1).isNotEmpty)) {

      List<BookVO> books = [];

      getAllBooks(1).forEach((book) {
        if (books.isEmpty || !books.any((books) => books.categoryId == book.categoryId)) {
          books.add(book);
        }
      });

      print(books);

      return books;

    } else {
      return [];
    }
  }


  void deleteBookVO(BookVO bookVO) async {
    return getBookBox().delete(bookVO.bookId);
  }



  Box<BookVO> getBookBox() {
    return Hive.box<BookVO>(BOX_NAME_BOOK_VO);
  }

  ///Reactive Programming
  Stream<void> getAllBooksEventStream() {
    return getBookBox().watch();
  }

  Stream<List<BookVO>> getBookVOListStream(int sortingFlag) {
    return Stream.value(getAllBooks(sortingFlag).toList());
  }

  Stream<List<BookVO>> getBookVOListByCategoryStream(List<BookVO>? selectedCategoryBookList) {
    return Stream.value(getAllBooksByCategory(selectedCategoryBookList).toList());
  }


  Stream<List<BookVO>> getCategoryListStream() {
    return Stream.value(getCategoryList().toSet().toList());
  }


}
