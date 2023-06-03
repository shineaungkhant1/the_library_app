import '../widgets/sorting_change_bottom_sheet.dart';

const MORE_LIKE="Don't Make Me Think, Revisited: A Common Sense Approach to Web Usability"
" (3rd Edition) (Voices That Matter) 3rd Edition ";
const E_BOOKS_FOR_YOU="Ebooks for you";
const ON_YOUR_WISHLIST="On your wishlist";
const AUDIO_BOOKS_FOR_YOU="Audiobooks for you";
const ABOUT_PAGE_TITLE="About Oranges Are Not the Only Fruit";
const RATINGS_AND_REWIEWS_PAGE_TITLE="Ratings and reviews";

List<MyRadioModel> radioList = [
  MyRadioModel(name: 'Recently'),
  MyRadioModel(name: 'Title'),
  MyRadioModel(name: 'Author'),
];

List<MyRadioModel> viewList = [
  MyRadioModel(name: 'List'),
  MyRadioModel(name: 'Large grid'),
  MyRadioModel(name: 'Small grid'),
];


class Category {
  final String name;
  bool isSelected;

  Category({required this.name, this.isSelected = false});
}

List<Category> categories = [
  Category(name: 'Ebooks'),
  Category(name: 'Audiobooks'),
  Category(name: 'Comics'),
  Category(name: 'Purchases'),
  Category(name: 'Samples'),
  Category(name: 'Uploads'),
];


const MAIN_SCREEN_BOTTOM_NAVIGATION_HOME = "Home";
const MAIN_SCREEN_BOTTOM_NAVIGATION_LIBRARY = "Library";
const MAIN_SCREEN_APP_BAR_TEXT = "Search Play Books";

const HOME_PAGE_TAB_BAR_EBOOKS_TEXT = "Ebooks";
const HOME_PAGE_TAB_BAR_AUDIOBOOKS_TEXT = "Audiobooks";

const LIBRARY_PAGE_TAB_BAR_YOUR_BOOKS_TEXT = "Your books";
const LIBRARY_PAGE_TAB_BAR_YOUR_SHELVES_TEXT = "Your shelves";

const YOUR_SHELVES_CREATE_NEW_BUTTON_TEXT = "Create New";

const ADD_SHELF_TEXT_FIELD_HINT_TEXT = "Shelf name";

const EACH_SHELF_PAGE_POP_UP_MENU_ITEM_1 = "Rename shelf";
const EACH_SHELF_PAGE_POP_UP_MENU_ITEM_2 = "Delete shelf";

const DETAIL_PAGE_SWITCH_TO_AUDIO_BOOK_TEXT = "Switch to the audiobook";
const DETAIL_PAGE_RATE_THIS_EBOOK = "Rate this eBook";
const DETAIL_PAGE_TELL_OTHER_WHAT_YOU_THINK = "Tell others what you tink";
const DETAIL_PAGE_WRITE_A_REVIEW_BUTTON_TEXT = "Write a reivew";

const BOTTOM_SHEET_SORT_BY_TITLE = "Sort by";
const SORT_BY_BUTTOM_SHEET_AUTHOR = "Author";
const SORT_BY_BUTTOM_SHEET_RECENT = "Recent";
const SORT_BY_BUTTOM_SHEET_TITLE = "Title";


String generateCurrentTime() {
  var now = DateTime.now();
  return now.toString();

}

DateTime get timestamp {
  final seconds = int.parse(generateCurrentTime().substring(0, 8), radix: 16);
  final milliseconds = seconds * 1000;
  return DateTime.fromMillisecondsSinceEpoch(milliseconds);
}
