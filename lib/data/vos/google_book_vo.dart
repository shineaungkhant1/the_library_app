
import 'package:json_annotation/json_annotation.dart';
import 'package:the_library_app/data/vos/volume_info_vo.dart';

import 'book_vo.dart';

part 'google_book_vo.g.dart';

@JsonSerializable()
class GoogleBookVO{

  @JsonKey(name: "id")
  String? id;

  @JsonKey(name: "volumeInfo")
  VolumeInfoVO? volumeInfo;

  GoogleBookVO(this.id, this.volumeInfo);

  factory GoogleBookVO.fromJson(Map<String,dynamic> json) =>_$GoogleBookVOFromJson(json);
  Map<String,dynamic> toJson()=> _$GoogleBookVOToJson(this);

  BookVO convertBookVO(String bookid,int positionId)
  {
    return BookVO(
        bookId:bookid,
        categoryId:positionId,
        categoryName:volumeInfo?.categories?.join(","),
        author:volumeInfo?.authors?.join(","),
        bookImage:volumeInfo?.imageLinks?.smallThumbnail,
        bookImageWidth:60,
        bookImageHeight:80,
        bookReviewLink: "",
        contributor:"",
        contributorNote:"",
        createdDate:volumeInfo?.publishedDate,
        description:volumeInfo?.description,
        price: "0.0",
        book_uri:"",
        publisher:volumeInfo?.publisher,
        title:volumeInfo?.title,
        updatedDate:volumeInfo?.publishedDate,
        selected:false);

  }


}