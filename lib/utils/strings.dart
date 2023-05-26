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