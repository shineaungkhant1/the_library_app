import 'package:json_annotation/json_annotation.dart';

import '../../data/vos/google_book_vo.dart';

part 'get_google_books_response.g.dart';

@JsonSerializable()
class GetGoogleBooksResponse{

  @JsonKey(name: "items")
  List<GoogleBookVO>? items;


  GetGoogleBooksResponse(this.items);

  factory  GetGoogleBooksResponse.fromJson(Map<String,dynamic> json) =>_$GetGoogleBooksResponseFromJson(json);
  Map<String,dynamic> toJson()=> _$GetGoogleBooksResponseToJson(this);


}
